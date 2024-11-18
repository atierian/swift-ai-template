import SwiftUI

struct MessageView: View {
  let message: Message

  var body: some View {
    HStack {
      if message.role == .user { Spacer() }
      Text(message.content)
        .padding()
        .background(message.role == .user ? Color.blue : Color.gray)
        .foregroundColor(.white)
        .cornerRadius(8)
      if !(message.role == .user) { Spacer() }
    }
    .padding(.horizontal)
  }
}
