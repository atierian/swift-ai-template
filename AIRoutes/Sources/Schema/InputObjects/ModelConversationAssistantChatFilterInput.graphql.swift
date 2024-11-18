// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct ModelConversationAssistantChatFilterInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    and: GraphQLNullable<[ModelConversationAssistantChatFilterInput?]> = nil,
    createdAt: GraphQLNullable<ModelStringInput> = nil,
    id: GraphQLNullable<ModelIDInput> = nil,
    metadata: GraphQLNullable<ModelStringInput> = nil,
    name: GraphQLNullable<ModelStringInput> = nil,
    not: GraphQLNullable<ModelConversationAssistantChatFilterInput> = nil,
    or: GraphQLNullable<[ModelConversationAssistantChatFilterInput?]> = nil,
    owner: GraphQLNullable<ModelStringInput> = nil,
    updatedAt: GraphQLNullable<ModelStringInput> = nil
  ) {
    __data = InputDict([
      "and": and,
      "createdAt": createdAt,
      "id": id,
      "metadata": metadata,
      "name": name,
      "not": not,
      "or": or,
      "owner": owner,
      "updatedAt": updatedAt
    ])
  }

  public var and: GraphQLNullable<[ModelConversationAssistantChatFilterInput?]> {
    get { __data["and"] }
    set { __data["and"] = newValue }
  }

  public var createdAt: GraphQLNullable<ModelStringInput> {
    get { __data["createdAt"] }
    set { __data["createdAt"] = newValue }
  }

  public var id: GraphQLNullable<ModelIDInput> {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var metadata: GraphQLNullable<ModelStringInput> {
    get { __data["metadata"] }
    set { __data["metadata"] = newValue }
  }

  public var name: GraphQLNullable<ModelStringInput> {
    get { __data["name"] }
    set { __data["name"] = newValue }
  }

  public var not: GraphQLNullable<ModelConversationAssistantChatFilterInput> {
    get { __data["not"] }
    set { __data["not"] = newValue }
  }

  public var or: GraphQLNullable<[ModelConversationAssistantChatFilterInput?]> {
    get { __data["or"] }
    set { __data["or"] = newValue }
  }

  public var owner: GraphQLNullable<ModelStringInput> {
    get { __data["owner"] }
    set { __data["owner"] = newValue }
  }

  public var updatedAt: GraphQLNullable<ModelStringInput> {
    get { __data["updatedAt"] }
    set { __data["updatedAt"] = newValue }
  }
}
