import SwiftUI
import Apollo
import AIRoutes

struct Conversation: Identifiable {
  let id: String
  let name: String?
  let metadata: String?
  let createdAt: AWSDateTime
  let updatedAt: AWSDateTime
}

@Observable
class ConversationRouteViewModel {
  var conversations: [Conversation] = []
  private let _fetchConversations: () async -> [Conversation]
  private let _createConversation: (_ name: String) async -> Conversation?

  init(
    _ fetchConversations: @escaping () async -> [Conversation],
    _ createNewConversation: @escaping (_ name: String) async -> Conversation?
  ) {
    self._fetchConversations = fetchConversations
    self._createConversation = createNewConversation
  }

  func fetchConversations(for route: AIRoute) {
    Task {
      conversations = await _fetchConversations()
    }
  }

  func createNewConversation(name: String) {
    Task {
      guard let newConversation = await _createConversation(name) else { return }
      conversations.append(newConversation)
    }
  }
}

func create(name: String) async -> Conversation? {
  let input: CreateConversationAssistantChatInput = .init(name: .init(stringLiteral: name))
  let createConversationMutation = CreateConversationAssistantChatMutation(input: input)
  let conversation: Conversation? = await withCheckedContinuation { continuation in
    apollo.perform(mutation: createConversationMutation) { result in
      print("createNewConversation result", result)
      guard let createdConversation = try? result.get().data?.createConversationAssistantChat
      else {
        continuation.resume(returning: nil)
        return
      }

      continuation.resume(
        returning: (
          Conversation(
            id: createdConversation.id,
            name: createdConversation.name,
            metadata: createdConversation.metadata,
            createdAt: createdConversation.createdAt,
            updatedAt: createdConversation.updatedAt
          )
        )
      )
    }
  }
  return conversation
}

func fetch() async -> [Conversation] {
  let listConversationsQuery = ListConversationAssistantChatsQuery(
    filter: nil, limit: nil, nextToken: nil
  )

  let conversations: [Conversation] = await withCheckedContinuation { continuation in
    apollo.fetch(query: listConversationsQuery) { result in
      guard let conversationsList = try? result.get()
        .data?.listConversationAssistantChats else {
        continuation.resume(returning: [])
        return
      }

       let conversations = conversationsList.items
        .compactMap { $0 }
        .map { item in
          Conversation(
            id: item.id,
            name: item.name,
            metadata: item.metadata,
            createdAt: item.createdAt,
            updatedAt: item.updatedAt
          )
        }
      continuation.resume(returning: conversations)
    }
  }
  return conversations
}

extension ConversationRouteViewModel {
  static let live = ConversationRouteViewModel(fetch, create)
  static let mock = ConversationRouteViewModel {
    [
      .init(
        id: UUID().uuidString,
        name: "Test Chat",
        metadata: nil,
        createdAt: "",
        updatedAt: ""
      )
    ]
  }
  _: { name in
    nil
  }
}
