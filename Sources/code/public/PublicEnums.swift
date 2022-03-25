
import Foundation
public extension PublicClient {
    /*
         Enum: SubscriberStatus
         Used By: Webhook
     */
    enum SubscriberStatus: String, Codable {
        case active

        case inactive

        case blocked
    }
}
