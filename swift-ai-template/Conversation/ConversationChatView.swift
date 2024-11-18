import SwiftUI

struct ConversationChatView: View {
  @Bindable var viewModel: ConversationChatViewModel

  var body: some View {
    VStack {
      ScrollViewReader { proxy in
        ScrollView {
          LazyVStack {
            ForEach(viewModel.messages, id: \.self.id) { message in
              MessageView(message: message)
            }
            .onAppear(perform: { scrollToEnd(proxy: proxy)})
            .onChange(of: viewModel.messages) {
              withAnimation {
                scrollToEnd(proxy: proxy)
              }
            }

            if viewModel.isLoading {
              ProgressView()
            }
          }
        }
        .refreshable(action: {
          viewModel.loadConversationHistory()
        })
      }

      HStack {
        TextField("Type a message", text: $viewModel.currentUserMessageText)
          .textFieldStyle(RoundedBorderTextFieldStyle())

        Button("Send", action: viewModel.sendMessage)
          .disabled(viewModel.currentUserMessageText.isEmpty)
          .keyboardShortcut(.defaultAction)
      }
      .padding()
    }
    .toolbar {
      ToolbarItem() {
        Button(action: viewModel.loadConversationHistory) {
          Image(systemName: "arrow.clockwise.circle")
        }
        .keyboardShortcut("r", modifiers: .command)
      }
    }
    .onAppear {
      viewModel.loadConversationHistory()
      viewModel.subscribeToAssistantResponses()
    }
  }

  func scrollToEnd(proxy: ScrollViewProxy) {
    let endIndex = viewModel.messages.endIndex
    guard endIndex > 0 else { return }
    proxy.scrollTo(viewModel.messages[endIndex - 1].id)
  }
}
