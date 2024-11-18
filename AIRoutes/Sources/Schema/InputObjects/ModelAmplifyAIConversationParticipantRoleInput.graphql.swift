// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct ModelAmplifyAIConversationParticipantRoleInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    eq: GraphQLNullable<GraphQLEnum<AmplifyAIConversationParticipantRole>> = nil,
    ne: GraphQLNullable<GraphQLEnum<AmplifyAIConversationParticipantRole>> = nil
  ) {
    __data = InputDict([
      "eq": eq,
      "ne": ne
    ])
  }

  public var eq: GraphQLNullable<GraphQLEnum<AmplifyAIConversationParticipantRole>> {
    get { __data["eq"] }
    set { __data["eq"] = newValue }
  }

  public var ne: GraphQLNullable<GraphQLEnum<AmplifyAIConversationParticipantRole>> {
    get { __data["ne"] }
    set { __data["ne"] = newValue }
  }
}
