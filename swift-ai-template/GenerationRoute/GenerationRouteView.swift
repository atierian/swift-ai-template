import SwiftUI

struct GenerationRouteView: View {
  let route: AIRoute
  @Bindable var viewModel: GenerationRouteViewModel

  init(
    route: AIRoute,
    viewModel: GenerationRouteViewModel = .init()
  ) {
    self.route = route
    self.viewModel = viewModel
  }

  var body: some View {
    VStack {
      if let recipe = viewModel.recipe {
        ScrollView {
          VStack(alignment: .leading) {
            Text(recipe.name).font(.largeTitle)
              .padding()

            Text("Ingredients").font(.title)
              .padding(.leading)
            Text(recipe.ingredients.joined(separator: "\n"))
              .padding(.leading)

            Text("Instructions").font(.title)
              .padding([.leading, .top])
            Text(recipe.instructions)
              .padding(.leading)
          }.frame(maxWidth: .infinity, alignment: .leading)
        }
      }

      Spacer()
      HStack(alignment: .bottom) {
        TextField("Type a message", text: $viewModel.messageText)
          .textFieldStyle(RoundedBorderTextFieldStyle())

        Button("Send") {
          viewModel.sendMessage()
        }
        .keyboardShortcut(.defaultAction)
        .disabled(viewModel.messageText.isEmpty)
      }
      .padding()
    }
    .navigationTitle(route.name)
  }
}

#Preview {
  GenerationRouteView(
    route: .init(id: "Generate Recipe", name: "001"),
    viewModel: .mock
  )
}
