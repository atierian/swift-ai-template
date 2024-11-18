// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct AmplifyAIToolSpecificationInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    description: GraphQLNullable<String> = nil,
    inputSchema: AmplifyAIToolInputSchemaInput,
    name: String
  ) {
    __data = InputDict([
      "description": description,
      "inputSchema": inputSchema,
      "name": name
    ])
  }

  public var description: GraphQLNullable<String> {
    get { __data["description"] }
    set { __data["description"] = newValue }
  }

  public var inputSchema: AmplifyAIToolInputSchemaInput {
    get { __data["inputSchema"] }
    set { __data["inputSchema"] = newValue }
  }

  public var name: String {
    get { __data["name"] }
    set { __data["name"] = newValue }
  }
}
