import AWSCognitoAuthPlugin
import Amplify
import Authenticator
import SwiftUI

@main
struct MyApp: App {
  init() {
    do {
      try Amplify.add(plugin: AWSCognitoAuthPlugin())
      try Amplify.configure(with: .amplifyOutputs)
    } catch {
      print("Unable to configure Amplify \(error)")
    }
  }

  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
