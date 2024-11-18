import SwiftUI
import AIRoutes
import Apollo

struct AIRoutesView: View {
  let viewModel = AIRoutesViewModel()

  var body: some View {
    NavigationView {
      List {
        Section(header: Text("Generation Routes")) {
          ForEach(viewModel.generationRoutes) { route in
            NavigationLink(destination: GenerationRouteView(route: route)) {
              Text(route.name)
            }
          }
        }

        Section(header: Text("Conversation Routes")) {
          ForEach(viewModel.conversationRoutes) { route in
            NavigationLink(destination: ConversationRouteView(route: route, viewModel: .live)) {
              Text(route.name)
            }
          }
        }
      }
      .navigationTitle("AI Routes")
    }
  }
}


// MARK: - Models

struct AIRoute: Identifiable {
  let id: String
  let name: String
}

enum ContentBlock {
  case text(String)
  case document(ContentBlockDocumentRepresentable)
  case image(ContentBlockImageRepresentable)
  case toolUse(ContentBlockToolUseRepresentable)
  case toolResult(ContentBlockToolResultRepresentable)
}

protocol ContentBlockImageRepresentable {
  var format: String { get }
  var _source: ContentBlockSourceRepresentable { get }
}

protocol ContentBlockToolUseRepresentable {
  var toolUseId: String { get }
  var name: String { get }
  var input: AWSJSON { get }
}

protocol ContentBlockDocumentRepresentable {
  var format: String { get }
  var name: String { get }
  var _source: any ContentBlockSourceRepresentable { get }
}

protocol ContentBlockSourceRepresentable {
  var bytes: String? { get }
}

protocol ContentBlockToolResultRepresentable {
  var toolUseId: String { get }
  var content: [ToolResultContentRepresentable] { get }
}

protocol ToolResultContentRepresentable {
  var text: String? { get }
  var document: ContentBlockDocumentRepresentable? { get }
  var image: ContentBlockImageRepresentable? { get }
}

struct Message: Identifiable, Hashable {
  let id: String
  let associatedUserMessageId: String?
  let role: AmplifyAIConversationParticipantRole
  var content: String
  // TODO: Convert to Date
  let createdAt: String
  let updatedAt: String
}



#Preview {
    AIRoutesView()
}
