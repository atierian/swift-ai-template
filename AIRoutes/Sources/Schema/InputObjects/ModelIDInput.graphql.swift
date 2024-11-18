// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct ModelIDInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    attributeExists: GraphQLNullable<Bool> = nil,
    attributeType: GraphQLNullable<GraphQLEnum<ModelAttributeTypes>> = nil,
    beginsWith: GraphQLNullable<ID> = nil,
    between: GraphQLNullable<[ID?]> = nil,
    contains: GraphQLNullable<ID> = nil,
    eq: GraphQLNullable<ID> = nil,
    ge: GraphQLNullable<ID> = nil,
    gt: GraphQLNullable<ID> = nil,
    le: GraphQLNullable<ID> = nil,
    lt: GraphQLNullable<ID> = nil,
    ne: GraphQLNullable<ID> = nil,
    notContains: GraphQLNullable<ID> = nil,
    size: GraphQLNullable<ModelSizeInput> = nil
  ) {
    __data = InputDict([
      "attributeExists": attributeExists,
      "attributeType": attributeType,
      "beginsWith": beginsWith,
      "between": between,
      "contains": contains,
      "eq": eq,
      "ge": ge,
      "gt": gt,
      "le": le,
      "lt": lt,
      "ne": ne,
      "notContains": notContains,
      "size": size
    ])
  }

  public var attributeExists: GraphQLNullable<Bool> {
    get { __data["attributeExists"] }
    set { __data["attributeExists"] = newValue }
  }

  public var attributeType: GraphQLNullable<GraphQLEnum<ModelAttributeTypes>> {
    get { __data["attributeType"] }
    set { __data["attributeType"] = newValue }
  }

  public var beginsWith: GraphQLNullable<ID> {
    get { __data["beginsWith"] }
    set { __data["beginsWith"] = newValue }
  }

  public var between: GraphQLNullable<[ID?]> {
    get { __data["between"] }
    set { __data["between"] = newValue }
  }

  public var contains: GraphQLNullable<ID> {
    get { __data["contains"] }
    set { __data["contains"] = newValue }
  }

  public var eq: GraphQLNullable<ID> {
    get { __data["eq"] }
    set { __data["eq"] = newValue }
  }

  public var ge: GraphQLNullable<ID> {
    get { __data["ge"] }
    set { __data["ge"] = newValue }
  }

  public var gt: GraphQLNullable<ID> {
    get { __data["gt"] }
    set { __data["gt"] = newValue }
  }

  public var le: GraphQLNullable<ID> {
    get { __data["le"] }
    set { __data["le"] = newValue }
  }

  public var lt: GraphQLNullable<ID> {
    get { __data["lt"] }
    set { __data["lt"] = newValue }
  }

  public var ne: GraphQLNullable<ID> {
    get { __data["ne"] }
    set { __data["ne"] = newValue }
  }

  public var notContains: GraphQLNullable<ID> {
    get { __data["notContains"] }
    set { __data["notContains"] = newValue }
  }

  public var size: GraphQLNullable<ModelSizeInput> {
    get { __data["size"] }
    set { __data["size"] = newValue }
  }
}
