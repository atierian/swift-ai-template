import Foundation
import AIRoutes

struct ConversationModel {
  let id: String
  let name: String?
  let metadata: String?
  let createdAt: AWSDateTime
  let updatedAt: AWSDateTime
}
