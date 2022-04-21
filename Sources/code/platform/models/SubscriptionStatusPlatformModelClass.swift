

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionStatus
         Used By: Billing
     */

    class SubscriptionStatus: Codable {
        public var isEnabled: Bool?

        public var subscription: Subscription?

        public enum CodingKeys: String, CodingKey {
            case isEnabled = "is_enabled"

            case subscription
        }

        public init(isEnabled: Bool? = nil, subscription: Subscription? = nil) {
            self.isEnabled = isEnabled

            self.subscription = subscription
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isEnabled = try container.decode(Bool.self, forKey: .isEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscription = try container.decode(Subscription.self, forKey: .subscription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isEnabled, forKey: .isEnabled)

            try? container.encodeIfPresent(subscription, forKey: .subscription)
        }
    }
}
