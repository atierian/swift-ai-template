// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class OnCreateAssistantResponseAssistantChatSubscription: GraphQLSubscription {
  public static let operationName: String = "OnCreateAssistantResponseAssistantChat"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"subscription OnCreateAssistantResponseAssistantChat($conversationId: ID!) { onCreateAssistantResponseAssistantChat(conversationId: $conversationId) { __typename associatedUserMessageId contentBlockDeltaIndex contentBlockDoneAtIndex contentBlockIndex contentBlockText contentBlockToolUse { __typename input name toolUseId } conversationId errors { __typename errorType message } id owner stopReason } }"#
    ))

  public var conversationId: ID

  public init(conversationId: ID) {
    self.conversationId = conversationId
  }

  public var __variables: Variables? { ["conversationId": conversationId] }

  public struct Data: AIRoutes.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.Subscription }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("onCreateAssistantResponseAssistantChat", OnCreateAssistantResponseAssistantChat?.self, arguments: ["conversationId": .variable("conversationId")]),
    ] }

    public var onCreateAssistantResponseAssistantChat: OnCreateAssistantResponseAssistantChat? { __data["onCreateAssistantResponseAssistantChat"] }

    /// OnCreateAssistantResponseAssistantChat
    ///
    /// Parent Type: `AmplifyAIConversationMessageStreamPart`
    public struct OnCreateAssistantResponseAssistantChat: AIRoutes.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIConversationMessageStreamPart }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("associatedUserMessageId", AIRoutes.ID.self),
        .field("contentBlockDeltaIndex", Int?.self),
        .field("contentBlockDoneAtIndex", Int?.self),
        .field("contentBlockIndex", Int?.self),
        .field("contentBlockText", String?.self),
        .field("contentBlockToolUse", ContentBlockToolUse?.self),
        .field("conversationId", AIRoutes.ID.self),
        .field("errors", [Error_SelectionSet?]?.self),
        .field("id", AIRoutes.ID.self),
        .field("owner", String?.self),
        .field("stopReason", String?.self),
      ] }

      public var associatedUserMessageId: AIRoutes.ID { __data["associatedUserMessageId"] }
      public var contentBlockDeltaIndex: Int? { __data["contentBlockDeltaIndex"] }
      public var contentBlockDoneAtIndex: Int? { __data["contentBlockDoneAtIndex"] }
      public var contentBlockIndex: Int? { __data["contentBlockIndex"] }
      public var contentBlockText: String? { __data["contentBlockText"] }
      public var contentBlockToolUse: ContentBlockToolUse? { __data["contentBlockToolUse"] }
      public var conversationId: AIRoutes.ID { __data["conversationId"] }
      public var errors: [Error_SelectionSet?]? { __data["errors"] }
      public var id: AIRoutes.ID { __data["id"] }
      public var owner: String? { __data["owner"] }
      public var stopReason: String? { __data["stopReason"] }

      /// OnCreateAssistantResponseAssistantChat.ContentBlockToolUse
      ///
      /// Parent Type: `AmplifyAIToolUseBlock`
      public struct ContentBlockToolUse: AIRoutes.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIToolUseBlock }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("input", AIRoutes.AWSJSON.self),
          .field("name", String.self),
          .field("toolUseId", String.self),
        ] }

        public var input: AIRoutes.AWSJSON { __data["input"] }
        public var name: String { __data["name"] }
        public var toolUseId: String { __data["toolUseId"] }
      }

      /// OnCreateAssistantResponseAssistantChat.Error_SelectionSet
      ///
      /// Parent Type: `AmplifyAIConversationTurnError`
      public struct Error_SelectionSet: AIRoutes.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIConversationTurnError }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("errorType", String.self),
          .field("message", String.self),
        ] }

        public var errorType: String { __data["errorType"] }
        public var message: String { __data["message"] }
      }
    }
  }
}
