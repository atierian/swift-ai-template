// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CreateConversationAssistantChatMutation: GraphQLMutation {
  public static let operationName: String = "CreateConversationAssistantChat"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation CreateConversationAssistantChat($input: CreateConversationAssistantChatInput!) { createConversationAssistantChat(input: $input) { __typename id name metadata createdAt updatedAt } }"#
    ))

  public var input: CreateConversationAssistantChatInput

  public init(input: CreateConversationAssistantChatInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: AIRoutes.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("createConversationAssistantChat", CreateConversationAssistantChat?.self, arguments: ["input": .variable("input")]),
    ] }

    public var createConversationAssistantChat: CreateConversationAssistantChat? { __data["createConversationAssistantChat"] }

    /// CreateConversationAssistantChat
    ///
    /// Parent Type: `ConversationAssistantChat`
    public struct CreateConversationAssistantChat: AIRoutes.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.ConversationAssistantChat }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", AIRoutes.ID.self),
        .field("name", String?.self),
        .field("metadata", AIRoutes.AWSJSON?.self),
        .field("createdAt", AIRoutes.AWSDateTime.self),
        .field("updatedAt", AIRoutes.AWSDateTime.self),
      ] }

      public var id: AIRoutes.ID { __data["id"] }
      public var name: String? { __data["name"] }
      public var metadata: AIRoutes.AWSJSON? { __data["metadata"] }
      public var createdAt: AIRoutes.AWSDateTime { __data["createdAt"] }
      public var updatedAt: AIRoutes.AWSDateTime { __data["updatedAt"] }
    }
  }
}
