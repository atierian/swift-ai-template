// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ListConversationAssistantChatsQuery: GraphQLQuery {
  public static let operationName: String = "ListConversationAssistantChats"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query ListConversationAssistantChats($filter: ModelConversationAssistantChatFilterInput, $limit: Int, $nextToken: String) { listConversationAssistantChats( filter: $filter limit: $limit nextToken: $nextToken ) { __typename items { __typename ...Conversation } nextToken } }"#,
      fragments: [Conversation.self]
    ))

  public var filter: GraphQLNullable<ModelConversationAssistantChatFilterInput>
  public var limit: GraphQLNullable<Int>
  public var nextToken: GraphQLNullable<String>

  public init(
    filter: GraphQLNullable<ModelConversationAssistantChatFilterInput>,
    limit: GraphQLNullable<Int>,
    nextToken: GraphQLNullable<String>
  ) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var __variables: Variables? { [
    "filter": filter,
    "limit": limit,
    "nextToken": nextToken
  ] }

  public struct Data: AIRoutes.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("listConversationAssistantChats", ListConversationAssistantChats?.self, arguments: [
        "filter": .variable("filter"),
        "limit": .variable("limit"),
        "nextToken": .variable("nextToken")
      ]),
    ] }

    public var listConversationAssistantChats: ListConversationAssistantChats? { __data["listConversationAssistantChats"] }

    /// ListConversationAssistantChats
    ///
    /// Parent Type: `ModelConversationAssistantChatConnection`
    public struct ListConversationAssistantChats: AIRoutes.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.ModelConversationAssistantChatConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("items", [Item?].self),
        .field("nextToken", String?.self),
      ] }

      public var items: [Item?] { __data["items"] }
      public var nextToken: String? { __data["nextToken"] }

      /// ListConversationAssistantChats.Item
      ///
      /// Parent Type: `ConversationAssistantChat`
      public struct Item: AIRoutes.SelectionSet {
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
}
