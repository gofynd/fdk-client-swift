

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionActivateReq
         Used By: Billing
     */

    class SubscriptionActivateReq: Codable {
        public var uniqueId: String?

        public var type: String?

        public var productSuite: String?

        public var planId: String?

        public var paymentMethod: String?

        public enum CodingKeys: String, CodingKey {
            case uniqueId = "unique_id"

            case type

            case productSuite = "product_suite"

            case planId = "plan_id"

            case paymentMethod = "payment_method"
        }

        public init(paymentMethod: String? = nil, planId: String? = nil, productSuite: String? = nil, type: String? = nil, uniqueId: String? = nil) {
            self.uniqueId = uniqueId

            self.type = type

            self.productSuite = productSuite

            self.planId = planId

            self.paymentMethod = paymentMethod
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
                planId = try container.decode(String.self, forKey: .planId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethod = try container.decode(String.self, forKey: .paymentMethod)

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

            try? container.encodeIfPresent(planId, forKey: .planId)

            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
        }
    }
}
