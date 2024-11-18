// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIImageBlockInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    format: String,
    source: AmplifyAIImageBlockSourceInput
  ) {
    __data = InputDict([
      "format": format,
      "source": source
    ])
  }

  public var format: String {
    get { __data["format"] }
    set { __data["format"] = newValue }
  }

  public var source: AmplifyAIImageBlockSourceInput {
    get { __data["source"] }
    set { __data["source"] = newValue }
  }
}
