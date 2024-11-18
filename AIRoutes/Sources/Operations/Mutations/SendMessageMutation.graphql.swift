// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class SendMessageMutation: GraphQLMutation {
  public static let operationName: String = "SendMessage"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation SendMessage($aiContext: AWSJSON, $content: [AmplifyAIContentBlockInput], $conversationId: ID!, $toolConfiguration: AmplifyAIToolConfigurationInput) { assistantChat( aiContext: $aiContext content: $content conversationId: $conversationId toolConfiguration: $toolConfiguration ) { __typename aiContext content { __typename document { __typename format name source { __typename bytes } } image { __typename format source { __typename bytes } } text toolResult { __typename content { __typename document { __typename format name source { __typename bytes } } image { __typename format source { __typename bytes } } json text } status toolUseId } toolUse { __typename input name toolUseId } } conversationId createdAt id owner role updatedAt toolConfiguration { __typename tools { __typename toolSpec { __typename description inputSchema { __typename json } name } } } } }"#
    ))

  public var aiContext: GraphQLNullable<AWSJSON>
  public var content: GraphQLNullable<[AmplifyAIContentBlockInput?]>
  public var conversationId: ID
  public var toolConfiguration: GraphQLNullable<AmplifyAIToolConfigurationInput>

  public init(
    aiContext: GraphQLNullable<AWSJSON>,
    content: GraphQLNullable<[AmplifyAIContentBlockInput?]>,
    conversationId: ID,
    toolConfiguration: GraphQLNullable<AmplifyAIToolConfigurationInput>
  ) {
    self.aiContext = aiContext
    self.content = content
    self.conversationId = conversationId
    self.toolConfiguration = toolConfiguration
  }

  public var __variables: Variables? { [
    "aiContext": aiContext,
    "content": content,
    "conversationId": conversationId,
    "toolConfiguration": toolConfiguration
  ] }

  public struct Data: AIRoutes.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("assistantChat", AssistantChat?.self, arguments: [
        "aiContext": .variable("aiContext"),
        "content": .variable("content"),
        "conversationId": .variable("conversationId"),
        "toolConfiguration": .variable("toolConfiguration")
      ]),
    ] }

    public var assistantChat: AssistantChat? { __data["assistantChat"] }

    /// AssistantChat
    ///
    /// Parent Type: `AmplifyAIConversationMessage`
    public struct AssistantChat: AIRoutes.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Interfaces.AmplifyAIConversationMessage }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("aiContext", AIRoutes.AWSJSON?.self),
        .field("content", [Content?]?.self),
        .field("conversationId", AIRoutes.ID.self),
        .field("createdAt", AIRoutes.AWSDateTime?.self),
        .field("id", AIRoutes.ID.self),
        .field("owner", String?.self),
        .field("role", GraphQLEnum<AIRoutes.AmplifyAIConversationParticipantRole>?.self),
        .field("updatedAt", AIRoutes.AWSDateTime?.self),
        .field("toolConfiguration", ToolConfiguration?.self),
      ] }

      public var aiContext: AIRoutes.AWSJSON? { __data["aiContext"] }
      public var content: [Content?]? { __data["content"] }
      public var conversationId: AIRoutes.ID { __data["conversationId"] }
      public var createdAt: AIRoutes.AWSDateTime? { __data["createdAt"] }
      public var id: AIRoutes.ID { __data["id"] }
      public var owner: String? { __data["owner"] }
      public var role: GraphQLEnum<AIRoutes.AmplifyAIConversationParticipantRole>? { __data["role"] }
      public var updatedAt: AIRoutes.AWSDateTime? { __data["updatedAt"] }
      public var toolConfiguration: ToolConfiguration? { __data["toolConfiguration"] }

      /// AssistantChat.Content
      ///
      /// Parent Type: `AmplifyAIContentBlock`
      public struct Content: AIRoutes.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIContentBlock }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("document", Document?.self),
          .field("image", Image?.self),
          .field("text", String?.self),
          .field("toolResult", ToolResult?.self),
          .field("toolUse", ToolUse?.self),
        ] }

        public var document: Document? { __data["document"] }
        public var image: Image? { __data["image"] }
        public var text: String? { __data["text"] }
        public var toolResult: ToolResult? { __data["toolResult"] }
        public var toolUse: ToolUse? { __data["toolUse"] }

        /// AssistantChat.Content.Document
        ///
        /// Parent Type: `AmplifyAIDocumentBlock`
        public struct Document: AIRoutes.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIDocumentBlock }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("format", String.self),
            .field("name", String.self),
            .field("source", Source.self),
          ] }

          public var format: String { __data["format"] }
          public var name: String { __data["name"] }
          public var source: Source { __data["source"] }

          /// AssistantChat.Content.Document.Source
          ///
          /// Parent Type: `AmplifyAIDocumentBlockSource`
          public struct Source: AIRoutes.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIDocumentBlockSource }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("bytes", String?.self),
            ] }

            public var bytes: String? { __data["bytes"] }
          }
        }

        /// AssistantChat.Content.Image
        ///
        /// Parent Type: `AmplifyAIImageBlock`
        public struct Image: AIRoutes.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIImageBlock }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("format", String.self),
            .field("source", Source.self),
          ] }

          public var format: String { __data["format"] }
          public var source: Source { __data["source"] }

          /// AssistantChat.Content.Image.Source
          ///
          /// Parent Type: `AmplifyAIImageBlockSource`
          public struct Source: AIRoutes.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIImageBlockSource }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("bytes", String?.self),
            ] }

            public var bytes: String? { __data["bytes"] }
          }
        }

        /// AssistantChat.Content.ToolResult
        ///
        /// Parent Type: `AmplifyAIToolResultBlock`
        public struct ToolResult: AIRoutes.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIToolResultBlock }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("content", [Content].self),
            .field("status", String?.self),
            .field("toolUseId", String.self),
          ] }

          public var content: [Content] { __data["content"] }
          public var status: String? { __data["status"] }
          public var toolUseId: String { __data["toolUseId"] }

          /// AssistantChat.Content.ToolResult.Content
          ///
          /// Parent Type: `AmplifyAIToolResultContentBlock`
          public struct Content: AIRoutes.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIToolResultContentBlock }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("document", Document?.self),
              .field("image", Image?.self),
              .field("json", AIRoutes.AWSJSON?.self),
              .field("text", String?.self),
            ] }

            public var document: Document? { __data["document"] }
            public var image: Image? { __data["image"] }
            public var json: AIRoutes.AWSJSON? { __data["json"] }
            public var text: String? { __data["text"] }

            /// AssistantChat.Content.ToolResult.Content.Document
            ///
            /// Parent Type: `AmplifyAIDocumentBlock`
            public struct Document: AIRoutes.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIDocumentBlock }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("format", String.self),
                .field("name", String.self),
                .field("source", Source.self),
              ] }

              public var format: String { __data["format"] }
              public var name: String { __data["name"] }
              public var source: Source { __data["source"] }

              /// AssistantChat.Content.ToolResult.Content.Document.Source
              ///
              /// Parent Type: `AmplifyAIDocumentBlockSource`
              public struct Source: AIRoutes.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIDocumentBlockSource }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("bytes", String?.self),
                ] }

                public var bytes: String? { __data["bytes"] }
              }
            }

            /// AssistantChat.Content.ToolResult.Content.Image
            ///
            /// Parent Type: `AmplifyAIImageBlock`
            public struct Image: AIRoutes.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIImageBlock }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("format", String.self),
                .field("source", Source.self),
              ] }

              public var format: String { __data["format"] }
              public var source: Source { __data["source"] }

              /// AssistantChat.Content.ToolResult.Content.Image.Source
              ///
              /// Parent Type: `AmplifyAIImageBlockSource`
              public struct Source: AIRoutes.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIImageBlockSource }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("bytes", String?.self),
                ] }

                public var bytes: String? { __data["bytes"] }
              }
            }
          }
        }

        /// AssistantChat.Content.ToolUse
        ///
        /// Parent Type: `AmplifyAIToolUseBlock`
        public struct ToolUse: AIRoutes.SelectionSet {
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
      }

      /// AssistantChat.ToolConfiguration
      ///
      /// Parent Type: `AmplifyAIToolConfiguration`
      public struct ToolConfiguration: AIRoutes.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIToolConfiguration }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("tools", [Tool?]?.self),
        ] }

        public var tools: [Tool?]? { __data["tools"] }

        /// AssistantChat.ToolConfiguration.Tool
        ///
        /// Parent Type: `AmplifyAITool`
        public struct Tool: AIRoutes.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAITool }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("toolSpec", ToolSpec?.self),
          ] }

          public var toolSpec: ToolSpec? { __data["toolSpec"] }

          /// AssistantChat.ToolConfiguration.Tool.ToolSpec
          ///
          /// Parent Type: `AmplifyAIToolSpecification`
          public struct ToolSpec: AIRoutes.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIToolSpecification }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("description", String?.self),
              .field("inputSchema", InputSchema.self),
              .field("name", String.self),
            ] }

            public var description: String? { __data["description"] }
            public var inputSchema: InputSchema { __data["inputSchema"] }
            public var name: String { __data["name"] }

            /// AssistantChat.ToolConfiguration.Tool.ToolSpec.InputSchema
            ///
            /// Parent Type: `AmplifyAIToolInputSchema`
            public struct InputSchema: AIRoutes.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.AmplifyAIToolInputSchema }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("json", AIRoutes.AWSJSON?.self),
              ] }

              public var json: AIRoutes.AWSJSON? { __data["json"] }
            }
          }
        }
      }
    }
  }
}
