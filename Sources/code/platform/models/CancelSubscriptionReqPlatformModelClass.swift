

import Foundation
public extension PlatformClient {
    /*
         Model: CancelSubscriptionReq
         Used By: Billing
     */

    class CancelSubscriptionReq: Codable {
        public var uniqueId: String?

        public var type: String?

        public var productSuite: String?

        public var subscriptionId: String?

        public enum CodingKeys: String, CodingKey {
            case uniqueId = "unique_id"

            case type

            case productSuite = "product_suite"

            case subscriptionId = "subscription_id"
        }

        public init(productSuite: String? = nil, subscriptionId: String? = nil, type: String? = nil, uniqueId: String? = nil) {
            self.uniqueId = uniqueId

            self.type = type

            self.productSuite = productSuite

            self.subscriptionId = subscriptionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uniqueId = try container.decode(String.self, forKey: .uniqueId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productSuite = try container.decode(String.self, forKey: .productSuite)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscriptionId = try container.decode(String.self, forKey: .subscriptionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(productSuite, forKey: .productSuite)

            try? container.encodeIfPresent(subscriptionId, forKey: .subscriptionId)
        }
    }
}
