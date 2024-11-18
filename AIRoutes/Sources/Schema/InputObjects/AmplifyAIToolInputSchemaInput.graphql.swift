// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIToolInputSchemaInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    json: GraphQLNullable<AWSJSON> = nil
  ) {
    __data = InputDict([
      "json": json
    ])
  }

  public var json: GraphQLNullable<AWSJSON> {
    get { __data["json"] }
    set { __data["json"] = newValue }
  }
}
