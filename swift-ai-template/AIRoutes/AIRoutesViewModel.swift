import Apollo
import SwiftUI

@Observable
class AIRoutesViewModel  {
  var generationRoutes: [AIRoute] = []
  var conversationRoutes: [AIRoute] = []

  init() {
    fetchRoutes()
  }

  private func fetchRoutes() {
    // TODO: Read these from amplify_outputs MIS
    generationRoutes = [
      AIRoute(id: "1", name: "Generate Recipe"),
    ]

    conversationRoutes = [
      AIRoute(id: "2", name: "Assistant Chat"),
    ]
  }
}
