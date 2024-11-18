// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GenerateRecipeQuery: GraphQLQuery {
  public static let operationName: String = "GenerateRecipe"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GenerateRecipe($description: String) { generateRecipe(description: $description) { __typename name ingredients instructions } }"#
    ))

  public var description: GraphQLNullable<String>

  public init(description: GraphQLNullable<String>) {
    self.description = description
  }

  public var __variables: Variables? { ["description": description] }

  public struct Data: AIRoutes.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("generateRecipe", GenerateRecipe?.self, arguments: ["description": .variable("description")]),
    ] }

    public var generateRecipe: GenerateRecipe? { __data["generateRecipe"] }

    /// GenerateRecipe
    ///
    /// Parent Type: `GenerateRecipeReturnType`
    public struct GenerateRecipe: AIRoutes.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { AIRoutes.Objects.GenerateRecipeReturnType }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String.self),
        .field("ingredients", [String].self),
        .field("instructions", String.self),
      ] }

      public var name: String { __data["name"] }
      public var ingredients: [String] { __data["ingredients"] }
      public var instructions: String { __data["instructions"] }
    }
  }
}
