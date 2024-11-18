// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct UpdateConversationAssistantChatInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    id: ID,
    metadata: GraphQLNullable<AWSJSON> = nil,
    name: GraphQLNullable<String> = nil
  ) {
    __data = InputDict([
      "id": id,
      "metadata": metadata,
      "name": name
    ])
  }

  public var id: ID {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var metadata: GraphQLNullable<AWSJSON> {
    get { __data["metadata"] }
    set { __data["metadata"] = newValue }
  }

  public var name: GraphQLNullable<String> {
    get { __data["name"] }
    set { __data["name"] = newValue }
  }
}
