// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIToolResultBlockInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    content: [AmplifyAIToolResultContentBlockInput],
    status: GraphQLNullable<String> = nil,
    toolUseId: String
  ) {
    __data = InputDict([
      "content": content,
      "status": status,
      "toolUseId": toolUseId
    ])
  }

  public var content: [AmplifyAIToolResultContentBlockInput] {
    get { __data["content"] }
    set { __data["content"] = newValue }
  }

  public var status: GraphQLNullable<String> {
    get { __data["status"] }
    set { __data["status"] = newValue }
  }

  public var toolUseId: String {
    get { __data["toolUseId"] }
    set { __data["toolUseId"] = newValue }
  }
}
