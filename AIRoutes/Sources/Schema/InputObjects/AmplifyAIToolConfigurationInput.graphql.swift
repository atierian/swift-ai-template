// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIToolConfigurationInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    tools: GraphQLNullable<[AmplifyAIToolInput?]> = nil
  ) {
    __data = InputDict([
      "tools": tools
    ])
  }

  public var tools: GraphQLNullable<[AmplifyAIToolInput?]> {
    get { __data["tools"] }
    set { __data["tools"] = newValue }
  }
}
