
import Foundation
public extension PublicClient {
    /*
         Enum: SubscriberStatus
         Used By: Configuration
     */
    enum SubscriberStatus: String, Codable {
        case active

        case inactive

        case blocked
    }
}
