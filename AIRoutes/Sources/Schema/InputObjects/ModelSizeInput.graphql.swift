// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct ModelSizeInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    between: GraphQLNullable<[Int?]> = nil,
    eq: GraphQLNullable<Int> = nil,
    ge: GraphQLNullable<Int> = nil,
    gt: GraphQLNullable<Int> = nil,
    le: GraphQLNullable<Int> = nil,
    lt: GraphQLNullable<Int> = nil,
    ne: GraphQLNullable<Int> = nil
  ) {
    __data = InputDict([
      "between": between,
      "eq": eq,
      "ge": ge,
      "gt": gt,
      "le": le,
      "lt": lt,
      "ne": ne
    ])
  }

  public var between: GraphQLNullable<[Int?]> {
    get { __data["between"] }
    set { __data["between"] = newValue }
  }

  public var eq: GraphQLNullable<Int> {
    get { __data["eq"] }
    set { __data["eq"] = newValue }
  }

  public var ge: GraphQLNullable<Int> {
    get { __data["ge"] }
    set { __data["ge"] = newValue }
  }

  public var gt: GraphQLNullable<Int> {
    get { __data["gt"] }
    set { __data["gt"] = newValue }
  }

  public var le: GraphQLNullable<Int> {
    get { __data["le"] }
    set { __data["le"] = newValue }
  }

  public var lt: GraphQLNullable<Int> {
    get { __data["lt"] }
    set { __data["lt"] = newValue }
  }

  public var ne: GraphQLNullable<Int> {
    get { __data["ne"] }
    set { __data["ne"] = newValue }
  }
}
