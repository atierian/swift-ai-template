import Amplify
import Apollo
import ApolloAPI
import ApolloWebSocket
import AWSAppSyncApolloExtensions
import AWSCognitoAuthPlugin
import AWSPluginsCore

let apollo = try! createApolloClient()

func createApolloClient() throws -> ApolloClient {
  let store = ApolloStore(cache: InMemoryNormalizedCache())
  let configuration = try AWSAppSyncConfiguration(with: .amplifyOutputs)

  // 1. Create your authorizer
  let authorizer = AuthTokenAuthorizer(fetchLatestAuthToken: getAccessToken)
  let interceptor = AppSyncInterceptor(authorizer)

  let interceptorProvider = DefaultPrependInterceptorProvider(
    interceptor: interceptor,
    store: store
  )

  let transport = RequestChainNetworkTransport(
    interceptorProvider: interceptorProvider,
    endpointURL: configuration.endpoint
  )

  // 2. Create the AWS AppSync compatible websocket client
  let websocket = AppSyncWebSocketClient(
    endpointURL: configuration.endpoint,
    authorizer: authorizer
  )
  // 3. Add it to the WebSocketTransport
  let webSocketTransport = WebSocketTransport(
    websocket: websocket
  )
  // 4. Create a SplitNetworkTransport
  let splitTransport = SplitNetworkTransport(
    uploadingNetworkTransport: transport,
    webSocketNetworkTransport: webSocketTransport
  )
  // 5. Pass the SplitNetworkTransport to the ApolloClient
  return ApolloClient(networkTransport: splitTransport, store: store)
}

func getAccessToken() async throws -> String {
  let authSession = try await Amplify.Auth.fetchAuthSession()
  guard let accessToken = try (authSession as? AuthCognitoTokensProvider)?
    .getCognitoTokens().get().accessToken
  else {
    throw AuthError.unknown(
      "Did not receive a valid response from fetchAuthSession for get token."
    )
  }
  return accessToken
}
