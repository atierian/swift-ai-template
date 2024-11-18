// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIDocumentBlockInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    format: String,
    name: String,
    source: AmplifyAIDocumentBlockSourceInput
  ) {
    __data = InputDict([
      "format": format,
      "name": name,
      "source": source
    ])
  }

  public var format: String {
    get { __data["format"] }
    set { __data["format"] = newValue }
  }

  public var name: String {
    get { __data["name"] }
    set { __data["name"] = newValue }
  }

  public var source: AmplifyAIDocumentBlockSourceInput {
    get { __data["source"] }
    set { __data["source"] = newValue }
  }
}
