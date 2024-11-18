import SwiftUI

struct ConversationRouteView: View {
  let route: AIRoute
  let viewModel: ConversationRouteViewModel
  @State var showingCreateConversationView = false
  @State var newConversationName = ""

  var body: some View {
    NavigationView {
      List {
        ForEach(viewModel.conversations) { conversation in
          NavigationLink(
            destination: ConversationChatView(
              viewModel: .init(conversationId: conversation.id)
            )
          ) {
            VStack(alignment: .leading) {
              Text(conversation.name ?? "")
                .font(.headline)
              
              Text(conversation.id)
                .font(.caption)
                .foregroundStyle(.secondary)
            }
          }
        }
      }
      .navigationTitle(route.name)
      .toolbar {
        ToolbarItem() {
          Button(action: {
            showingCreateConversationView.toggle()
          }) {
            Image(systemName: "plus")
          }
          .sheet(isPresented: $showingCreateConversationView) {
            CreateConversationView(viewModel: viewModel)
          }
        }
      }
      .onAppear {
        viewModel.fetchConversations(for: route)
      }
    }
  }
}

#Preview {
  ConversationRouteView(
    route: .init(id: UUID().uuidString, name: "Example Chat"),
    viewModel: .mock
  )
}
