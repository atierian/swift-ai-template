// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIToolInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    toolSpec: GraphQLNullable<AmplifyAIToolSpecificationInput> = nil
  ) {
    __data = InputDict([
      "toolSpec": toolSpec
    ])
  }

  public var toolSpec: GraphQLNullable<AmplifyAIToolSpecificationInput> {
    get { __data["toolSpec"] }
    set { __data["toolSpec"] = newValue }
  }
}
