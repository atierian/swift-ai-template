// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIToolUseBlockInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    input: AWSJSON,
    name: String,
    toolUseId: String
  ) {
    __data = InputDict([
      "input": input,
      "name": name,
      "toolUseId": toolUseId
    ])
  }

  public var input: AWSJSON {
    get { __data["input"] }
    set { __data["input"] = newValue }
  }

  public var name: String {
    get { __data["name"] }
    set { __data["name"] = newValue }
  }

  public var toolUseId: String {
    get { __data["toolUseId"] }
    set { __data["toolUseId"] = newValue }
  }
}
