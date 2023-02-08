

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentInfo
         Used By: Order
     */

    class PaymentInfo: Codable {
        public var paymentMethods: [PaymentMethod]?

        public var primaryMode: String

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case primaryMode = "primary_mode"
        }

        public init(paymentMethods: [PaymentMethod]? = nil, primaryMode: String) {
            self.paymentMethods = paymentMethods

            self.primaryMode = primaryMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentMethods = try container.decode([PaymentMethod].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryMode = try container.decode(String.self, forKey: .primaryMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(primaryMode, forKey: .primaryMode)
        }
    }
}
