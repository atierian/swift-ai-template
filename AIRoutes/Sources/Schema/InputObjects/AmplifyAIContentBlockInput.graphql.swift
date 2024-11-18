// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIContentBlockInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    document: GraphQLNullable<AmplifyAIDocumentBlockInput> = nil,
    image: GraphQLNullable<AmplifyAIImageBlockInput> = nil,
    text: GraphQLNullable<String> = nil,
    toolResult: GraphQLNullable<AmplifyAIToolResultBlockInput> = nil,
    toolUse: GraphQLNullable<AmplifyAIToolUseBlockInput> = nil
  ) {
    __data = InputDict([
      "document": document,
      "image": image,
      "text": text,
      "toolResult": toolResult,
      "toolUse": toolUse
    ])
  }

  public var document: GraphQLNullable<AmplifyAIDocumentBlockInput> {
    get { __data["document"] }
    set { __data["document"] = newValue }
  }

  public var image: GraphQLNullable<AmplifyAIImageBlockInput> {
    get { __data["image"] }
    set { __data["image"] = newValue }
  }

  public var text: GraphQLNullable<String> {
    get { __data["text"] }
    set { __data["text"] = newValue }
  }

  public var toolResult: GraphQLNullable<AmplifyAIToolResultBlockInput> {
    get { __data["toolResult"] }
    set { __data["toolResult"] = newValue }
  }

  public var toolUse: GraphQLNullable<AmplifyAIToolUseBlockInput> {
    get { __data["toolUse"] }
    set { __data["toolUse"] = newValue }
  }
}
