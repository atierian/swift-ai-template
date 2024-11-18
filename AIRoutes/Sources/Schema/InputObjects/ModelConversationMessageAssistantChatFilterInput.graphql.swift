// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct ModelConversationMessageAssistantChatFilterInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    aiContext: GraphQLNullable<ModelStringInput> = nil,
    and: GraphQLNullable<[ModelConversationMessageAssistantChatFilterInput?]> = nil,
    associatedUserMessageId: GraphQLNullable<ModelIDInput> = nil,
    conversationId: GraphQLNullable<ModelIDInput> = nil,
    createdAt: GraphQLNullable<ModelStringInput> = nil,
    id: GraphQLNullable<ModelIDInput> = nil,
    not: GraphQLNullable<ModelConversationMessageAssistantChatFilterInput> = nil,
    or: GraphQLNullable<[ModelConversationMessageAssistantChatFilterInput?]> = nil,
    owner: GraphQLNullable<ModelStringInput> = nil,
    role: GraphQLNullable<ModelAmplifyAIConversationParticipantRoleInput> = nil,
    updatedAt: GraphQLNullable<ModelStringInput> = nil
  ) {
    __data = InputDict([
      "aiContext": aiContext,
      "and": and,
      "associatedUserMessageId": associatedUserMessageId,
      "conversationId": conversationId,
      "createdAt": createdAt,
      "id": id,
      "not": not,
      "or": or,
      "owner": owner,
      "role": role,
      "updatedAt": updatedAt
    ])
  }

  public var aiContext: GraphQLNullable<ModelStringInput> {
    get { __data["aiContext"] }
    set { __data["aiContext"] = newValue }
  }

  public var and: GraphQLNullable<[ModelConversationMessageAssistantChatFilterInput?]> {
    get { __data["and"] }
    set { __data["and"] = newValue }
  }

  public var associatedUserMessageId: GraphQLNullable<ModelIDInput> {
    get { __data["associatedUserMessageId"] }
    set { __data["associatedUserMessageId"] = newValue }
  }

  public var conversationId: GraphQLNullable<ModelIDInput> {
    get { __data["conversationId"] }
    set { __data["conversationId"] = newValue }
  }

  public var createdAt: GraphQLNullable<ModelStringInput> {
    get { __data["createdAt"] }
    set { __data["createdAt"] = newValue }
  }

  public var id: GraphQLNullable<ModelIDInput> {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var not: GraphQLNullable<ModelConversationMessageAssistantChatFilterInput> {
    get { __data["not"] }
    set { __data["not"] = newValue }
  }

  public var or: GraphQLNullable<[ModelConversationMessageAssistantChatFilterInput?]> {
    get { __data["or"] }
    set { __data["or"] = newValue }
  }

  public var owner: GraphQLNullable<ModelStringInput> {
    get { __data["owner"] }
    set { __data["owner"] = newValue }
  }

  public var role: GraphQLNullable<ModelAmplifyAIConversationParticipantRoleInput> {
    get { __data["role"] }
    set { __data["role"] = newValue }
  }

  public var updatedAt: GraphQLNullable<ModelStringInput> {
    get { __data["updatedAt"] }
    set { __data["updatedAt"] = newValue }
  }
}
