// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct Conversation: AIRoutes.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment Conversation on ConversationAssistantChat { __typename id name metadata createdAt updatedAt }"#
  }

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
