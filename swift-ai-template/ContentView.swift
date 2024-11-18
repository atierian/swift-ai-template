import Amplify
import Authenticator
import SwiftUI

struct ContentView: View {
  var body: some View {
    Authenticator { state in
      AIRoutesView()
    }
  }
}
