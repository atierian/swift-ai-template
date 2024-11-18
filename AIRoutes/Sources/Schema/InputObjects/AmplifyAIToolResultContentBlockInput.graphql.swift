// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIToolResultContentBlockInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    document: GraphQLNullable<AmplifyAIDocumentBlockInput> = nil,
    image: GraphQLNullable<AmplifyAIImageBlockInput> = nil,
    json: GraphQLNullable<AWSJSON> = nil,
    text: GraphQLNullable<String> = nil
  ) {
    __data = InputDict([
      "document": document,
      "image": image,
      "json": json,
      "text": text
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

  public var json: GraphQLNullable<AWSJSON> {
    get { __data["json"] }
    set { __data["json"] = newValue }
  }

  public var text: GraphQLNullable<String> {
    get { __data["text"] }
    set { __data["text"] = newValue }
  }
}
