// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetConversationAssistantChatQuery: GraphQLQuery {
  public static let operationName: String = "GetConversationAssistantChat"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetConversationAssistantChat($id: ID!) { getConversationAssistantChat(id: $id) { __typename ...Conversation } }"#,
      fragments: [Conversation.self]
    ))

  public var id: ID

  public init(id: ID) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: AIRoutes.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getConversationAssistantChat", GetConversationAssistantChat?.self, arguments: ["id": .variable("id")]),
    ] }

    public var getConversationAssistantChat: GetConversationAssistantChat? { __data["getConversationAssistantChat"] }

    /// GetConversationAssistantChat
    ///
    /// Parent Type: `ConversationAssistantChat`
    public struct GetConversationAssistantChat: AIRoutes.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.ConversationAssistantChat }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(Conversation.self),
      ] }

      public var id: AIRoutes.ID { __data["id"] }
      public var name: String? { __data["name"] }
      public var metadata: AIRoutes.AWSJSON? { __data["metadata"] }
      public var createdAt: AIRoutes.AWSDateTime { __data["createdAt"] }
      public var updatedAt: AIRoutes.AWSDateTime { __data["updatedAt"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var conversation: Conversation { _toFragment() }
      }
    }
  }
}
