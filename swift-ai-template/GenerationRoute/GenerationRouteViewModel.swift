import SwiftUI
import AIRoutes

@Observable
class GenerationRouteViewModel {
  var messageText = ""
  var recipe: GenerateRecipe?

  init(recipe: GenerateRecipe? = nil) {
    self.recipe = recipe
  }

  func sendMessage() {
    let generateQuery = GenerateRecipeQuery(
      description: .init(stringLiteral: messageText)
    )

    apollo.fetch(query: generateQuery) { [weak self] result in
      if let response = try? result.get().data?.generateRecipe {
        self?.recipe = .init(
          name: response.name,
          ingredients: response.ingredients.map { "• " + $0 },
          instructions: response.instructions
        )
        self?.messageText = ""
      }
    }
  }
}

struct GenerateRecipe {
  var name: String
  var ingredients: [String]
  var instructions: String
}

extension GenerationRouteViewModel {
  static let live = GenerationRouteViewModel()
  static let mock = GenerationRouteViewModel(
    recipe: .init(
      name: "Gluten Free Chocolate Cake",
      ingredients: ["one", "two", "three"],
      instructions: "do a thing"
    )
  )
  static func mock(recipe: GenerateRecipe) -> GenerationRouteViewModel {
    .init(recipe: recipe)
  }
}
