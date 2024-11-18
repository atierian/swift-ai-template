import SwiftUI

struct CreateConversationView: View {
  @Environment(\.dismiss) var dismiss
  @State var name: String = ""
  let viewModel: ConversationRouteViewModel

  var body: some View {
    VStack {
      Text("Name")
      TextField(text: $name, prompt: Text("Name for the conversation")) {
        Text("Name")
      }

      HStack {
        Button("Cancel") {
          dismiss()
        }
        .keyboardShortcut(.cancelAction)
        Spacer()
        Button("Confirm") {
          viewModel.createNewConversation(name: name)
          dismiss()
        }
        .keyboardShortcut(.defaultAction)
      }
    }
    .padding(20)
    .frame(width: 300, height: 200)
  }
}
