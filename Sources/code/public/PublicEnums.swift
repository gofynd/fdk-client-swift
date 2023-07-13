
import Foundation

public extension PublicClient.Configuration {}

public extension PublicClient.Inventory {}

public extension PublicClient.Webhook {
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
