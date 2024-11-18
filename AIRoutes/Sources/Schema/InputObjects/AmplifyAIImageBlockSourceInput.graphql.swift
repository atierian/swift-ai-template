// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIImageBlockSourceInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    bytes: GraphQLNullable<String> = nil
  ) {
    __data = InputDict([
      "bytes": bytes
    ])
  }

  public var bytes: GraphQLNullable<String> {
    get { __data["bytes"] }
    set { __data["bytes"] = newValue }
  }
}
