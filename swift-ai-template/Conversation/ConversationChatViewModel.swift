import SwiftUI
import Foundation
import AIRoutes
import Combine
import Apollo

typealias GQLSubscriptionEvent = OnCreateAssistantResponseAssistantChatSubscription
  .Data
  .OnCreateAssistantResponseAssistantChat

typealias ListMessagesItem = ListConversationMessageAssistantChatsQuery
  .Data
  .ListConversationMessageAssistantChats
  .Item

typealias SendMessageResponse = SendMessageMutation
  .Data
  .AssistantChat

@Observable
class ConversationChatViewModel  {
  let conversationId: String

  init(conversationId: String) {
    self.conversationId = conversationId
  }

  var messages: [Message] = []
  var isLoading = false
  var currentUserMessageText = ""
  private var messageResponseSubscription: Apollo.Cancellable?
  private var events: [String: [SubscriptionEvent]] = [:]

  func loadConversationHistory() {
    let conversationHistoryQuery = ListConversationMessageAssistantChatsQuery(
      filter: .init(.init(conversationId: .init(.init(eq: .init(stringLiteral: conversationId))))),
      limit: nil,
      nextToken: nil
    )
    apollo.fetch(query: conversationHistoryQuery) { [weak self] result in
      log(result)
      guard let gqlMessages = try? result.get().data?.listConversationMessageAssistantChats else { return }
      let messages = gqlMessages.items
        .compactMap { $0 }
        .compactMap(mapGQLMessageToMessage(input:))
      self?.messages = messages
    }
  }

  func subscribeToAssistantResponses() {
    if messageResponseSubscription != nil {
      log("subscription exists for \(conversationId)")
      return
    }
    log("subscribing to conversation: \(conversationId)")
    self.messageResponseSubscription = apollo.subscribe(
      subscription: OnCreateAssistantResponseAssistantChatSubscription(
        conversationId: conversationId
      )
    ) { [weak self] result in
      switch result {
      case .success(let response):
        self?.reconcileStreamEvents(
          subscriptionEvent: response.data?.onCreateAssistantResponseAssistantChat
        )
      case .failure(let error):
        log(error)
      }
    }
  }

  func reconcileStreamEvents(
    subscriptionEvent: GQLSubscriptionEvent?
  ) {
    guard let subscriptionEvent else { log("event is nil"); return }
    do {
      let event = try mapGQLToSubscriptionEvent(event: subscriptionEvent)
      events[event.associatedUserMessageId]?.append(event)
      if case let .done(doneEvent) = event {
        log(doneEvent)
        // reconcile
      }
      if case let .text(textEvent) = event {
        let messageIndex = messages.firstIndex(where: { $0.id == textEvent.id })
        if let messageIndex {
          messages[messageIndex].content += textEvent.text
        } else {
          messages.append(
            .init(
              id: textEvent.id,
              associatedUserMessageId: textEvent.associatedUserMessageId,
              role: .assistant,
              content: textEvent.text,
              createdAt: "",
              updatedAt: ""
            )
          )
        }
      }
    } catch {
      log("error reconciling stream event: \(subscriptionEvent). Error: \(error)")
    }
  }

  deinit {
    log("")
    messageResponseSubscription?.cancel()
  }

  func sendMessage() {
    isLoading = true
    let mutation = SendMessageMutation.init(
      aiContext: nil,
      content: [
        .init(text: .init(stringLiteral: currentUserMessageText))
      ],
      conversationId: conversationId,
      toolConfiguration: nil
    )

    apollo.perform(mutation: mutation) { [weak self] result in
      guard let sentMessageResponse = try? result.get().data?.assistantChat else {
        log("error sending message")
        return
      }
      guard let message = mapGQLMessageToMessage(input: sentMessageResponse)
      else {
        log("sent message without text content")
        return
      }
      self?.messages.append(message)
      self?.currentUserMessageText = ""
    }

    isLoading = false
  }
}

func mapGQLMessageToMessage(input: ListMessagesItem) -> Message? {
  guard let content = input.content,
        content.contains(where: { $0?.text != nil })
  else {
    return nil
  }

  let textContext = content
    .compactMap({ $0?.text ?? "" })
    .joined(separator: "\n\n")

  return Message(
    id: input.id,
    associatedUserMessageId: input.associatedUserMessageId,
    role: .init(rawValue: input.role!.rawValue)!,
    content: textContext,
    createdAt: input.createdAt,
    updatedAt: input.updatedAt
  )
}

func mapGQLMessageToMessage(input: SendMessageResponse) -> Message? {
  guard let content = input.content,
        content.contains(where: { $0?.text != nil })
  else {
    return nil
  }

  let textContext = content
    .compactMap({ $0?.text ?? "" })
    .joined(separator: "\n\n")

  return Message(
    id: input.id,
    associatedUserMessageId: nil,
    role: .init(rawValue: input.role!.rawValue)!,
    content: textContext,
    createdAt: input.createdAt ?? "",
    updatedAt: input.updatedAt ?? ""
  )
}

func mapGQLToSubscriptionEvent(event: GQLSubscriptionEvent) throws -> SubscriptionEvent {
  if let stopReason = event.stopReason {
    return .done(
      event: .init(
        id: event.id,
        stopReason: stopReason,
        owner: event.owner,
        associatedUserMessageId: event.associatedUserMessageId
      )
    )
  }

  if let errors = event.errors,
     errors.count > 0 {
    return .error(
      event: errors.compactMap({ $0 }).map {
        .init(
          id: event.id,
          errorType: $0.errorType,
          message: $0.message,
          owner: event.owner,
          associatedUserMessageId: event.associatedUserMessageId
        )
      }
    )
  }

  if let toolUse = event.contentBlockToolUse {
    let input = try JSONSerialization.jsonObject(
      with: Data(toolUse.input.utf8), options: []
    ) as! [String: Any]
    return .toolUse(
      event: .init(
        id: event.id,
        name: toolUse.name,
        toolUseId: toolUse.toolUseId,
        input: input,
        contentBlockIndex: event.contentBlockIndex!,
        owner: event.owner,
        associatedUserMessageId: event.associatedUserMessageId
      )
    )
  }

  if let text = event.contentBlockText {
    return .text(
      event: .init(
        id: event.id,
        text: text,
        contentBlockIndex: event.contentBlockIndex!,
        contentBlockDeltaIndex: event.contentBlockDeltaIndex!,
        owner: event.owner,
        associatedUserMessageId: event.associatedUserMessageId)

    )
  }

  if let doneAtIndex = event.contentBlockDoneAtIndex {
    return .doneAtIndex(
      event: .init(
        id: event.id,
        contentBlockDoneAtIndex: doneAtIndex,
        owner: event.owner,
        associatedUserMessageId: event.associatedUserMessageId
      )
    )
  }

  preconditionFailure("Unexpected Event Type: \(event)")
}

enum SubscriptionEvent {
  case done(event: SubscriptionEventDone)
  case error(event: [SubscriptionEventError])
  case text(event: SubscriptionEventText)
  case toolUse(event: SubscriptionEventToolUse)
  case doneAtIndex(event: SubscriptionEventContentBlockDoneAtIndex)

  var id: String {
    return switch self {
    case .done(let event): event.id
    case .error(let event): event[0].id
    case .text(let event): event.id
    case .toolUse(let event): event.id
    case .doneAtIndex(let event): event.id
    }
  }

  var associatedUserMessageId: String {
    return switch self {
    case .done(let event): event.associatedUserMessageId
    case .error(let event): event[0].associatedUserMessageId
    case .text(let event): event.associatedUserMessageId
    case .toolUse(let event): event.associatedUserMessageId
    case .doneAtIndex(let event): event.associatedUserMessageId
    }
  }
}

struct SubscriptionEventContentBlockDoneAtIndex {
  let id: String
  let contentBlockDoneAtIndex: Int
  let owner: String?
  let associatedUserMessageId: String
}

struct SubscriptionEventDone {
  let id: String
  let stopReason: String
  let owner: String?
  let associatedUserMessageId: String
}

struct SubscriptionEventToolUse {
  let id: String
  let name: String
  let toolUseId: String
  let input: [String: Any]
  let contentBlockIndex: Int
  let owner: String?
  let associatedUserMessageId: String
}

struct SubscriptionEventText {
  let id: String
  let text: String
  let contentBlockIndex: Int
  let contentBlockDeltaIndex: Int
  let owner: String?
  let associatedUserMessageId: String
}

struct SubscriptionEventError {
  let id: String
  let errorType: String
  let message: String
  let owner: String?
  let associatedUserMessageId: String
}
