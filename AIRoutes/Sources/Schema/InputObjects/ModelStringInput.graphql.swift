// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct ModelStringInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    attributeExists: GraphQLNullable<Bool> = nil,
    attributeType: GraphQLNullable<GraphQLEnum<ModelAttributeTypes>> = nil,
    beginsWith: GraphQLNullable<String> = nil,
    between: GraphQLNullable<[String?]> = nil,
    contains: GraphQLNullable<String> = nil,
    eq: GraphQLNullable<String> = nil,
    ge: GraphQLNullable<String> = nil,
    gt: GraphQLNullable<String> = nil,
    le: GraphQLNullable<String> = nil,
    lt: GraphQLNullable<String> = nil,
    ne: GraphQLNullable<String> = nil,
    notContains: GraphQLNullable<String> = nil,
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

  public var beginsWith: GraphQLNullable<String> {
    get { __data["beginsWith"] }
    set { __data["beginsWith"] = newValue }
  }

  public var between: GraphQLNullable<[String?]> {
    get { __data["between"] }
    set { __data["between"] = newValue }
  }

  public var contains: GraphQLNullable<String> {
    get { __data["contains"] }
    set { __data["contains"] = newValue }
  }

  public var eq: GraphQLNullable<String> {
    get { __data["eq"] }
    set { __data["eq"] = newValue }
  }

  public var ge: GraphQLNullable<String> {
    get { __data["ge"] }
    set { __data["ge"] = newValue }
  }

  public var gt: GraphQLNullable<String> {
    get { __data["gt"] }
    set { __data["gt"] = newValue }
  }

  public var le: GraphQLNullable<String> {
    get { __data["le"] }
    set { __data["le"] = newValue }
  }

  public var lt: GraphQLNullable<String> {
    get { __data["lt"] }
    set { __data["lt"] = newValue }
  }

  public var ne: GraphQLNullable<String> {
    get { __data["ne"] }
    set { __data["ne"] = newValue }
  }

  public var notContains: GraphQLNullable<String> {
    get { __data["notContains"] }
    set { __data["notContains"] = newValue }
  }

  public var size: GraphQLNullable<ModelSizeInput> {
    get { __data["size"] }
    set { __data["size"] = newValue }
  }
}
