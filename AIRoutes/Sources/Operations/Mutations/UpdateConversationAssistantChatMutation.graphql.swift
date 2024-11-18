// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class UpdateConversationAssistantChatMutation: GraphQLMutation {
  public static let operationName: String = "UpdateConversationAssistantChat"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation UpdateConversationAssistantChat($input: UpdateConversationAssistantChatInput!) { updateConversationAssistantChat(input: $input) { __typename createdAt id metadata name owner updatedAt } }"#
    ))

  public var input: UpdateConversationAssistantChatInput

  public init(input: UpdateConversationAssistantChatInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: AIRoutes.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("updateConversationAssistantChat", UpdateConversationAssistantChat?.self, arguments: ["input": .variable("input")]),
    ] }

    public var updateConversationAssistantChat: UpdateConversationAssistantChat? { __data["updateConversationAssistantChat"] }

    /// UpdateConversationAssistantChat
    ///
    /// Parent Type: `ConversationAssistantChat`
    public struct UpdateConversationAssistantChat: AIRoutes.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.ConversationAssistantChat }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("createdAt", AIRoutes.AWSDateTime.self),
        .field("id", AIRoutes.ID.self),
        .field("metadata", AIRoutes.AWSJSON?.self),
        .field("name", String?.self),
        .field("owner", String?.self),
        .field("updatedAt", AIRoutes.AWSDateTime.self),
      ] }

      public var createdAt: AIRoutes.AWSDateTime { __data["createdAt"] }
      public var id: AIRoutes.ID { __data["id"] }
      public var metadata: AIRoutes.AWSJSON? { __data["metadata"] }
      public var name: String? { __data["name"] }
      public var owner: String? { __data["owner"] }
      public var updatedAt: AIRoutes.AWSDateTime { __data["updatedAt"] }
    }
  }
}
