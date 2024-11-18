// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == AIRoutes.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == AIRoutes.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == AIRoutes.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == AIRoutes.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: any ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Mutation": return AIRoutes.Objects.Mutation
    case "ConversationAssistantChat": return AIRoutes.Objects.ConversationAssistantChat
    case "ConversationMessageAssistantChat": return AIRoutes.Objects.ConversationMessageAssistantChat
    case "AmplifyAIContentBlock": return AIRoutes.Objects.AmplifyAIContentBlock
    case "AmplifyAIDocumentBlock": return AIRoutes.Objects.AmplifyAIDocumentBlock
    case "AmplifyAIDocumentBlockSource": return AIRoutes.Objects.AmplifyAIDocumentBlockSource
    case "AmplifyAIImageBlock": return AIRoutes.Objects.AmplifyAIImageBlock
    case "AmplifyAIImageBlockSource": return AIRoutes.Objects.AmplifyAIImageBlockSource
    case "AmplifyAIToolResultBlock": return AIRoutes.Objects.AmplifyAIToolResultBlock
    case "AmplifyAIToolResultContentBlock": return AIRoutes.Objects.AmplifyAIToolResultContentBlock
    case "AmplifyAIToolUseBlock": return AIRoutes.Objects.AmplifyAIToolUseBlock
    case "AmplifyAIToolConfiguration": return AIRoutes.Objects.AmplifyAIToolConfiguration
    case "AmplifyAITool": return AIRoutes.Objects.AmplifyAITool
    case "AmplifyAIToolSpecification": return AIRoutes.Objects.AmplifyAIToolSpecification
    case "AmplifyAIToolInputSchema": return AIRoutes.Objects.AmplifyAIToolInputSchema
    case "Query": return AIRoutes.Objects.Query
    case "GenerateRecipeReturnType": return AIRoutes.Objects.GenerateRecipeReturnType
    case "ModelConversationAssistantChatConnection": return AIRoutes.Objects.ModelConversationAssistantChatConnection
    case "ModelConversationMessageAssistantChatConnection": return AIRoutes.Objects.ModelConversationMessageAssistantChatConnection
    case "Subscription": return AIRoutes.Objects.Subscription
    case "AmplifyAIConversationMessageStreamPart": return AIRoutes.Objects.AmplifyAIConversationMessageStreamPart
    case "AmplifyAIConversationTurnError": return AIRoutes.Objects.AmplifyAIConversationTurnError
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
