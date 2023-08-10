

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentInfo
         Used By: Order
     */

    class PaymentInfo: Codable {
        public var primaryMode: String

        public var paymentMethods: [PaymentMethod]?

        public enum CodingKeys: String, CodingKey {
            case primaryMode = "primary_mode"

            case paymentMethods = "payment_methods"
        }

        public init(paymentMethods: [PaymentMethod]? = nil, primaryMode: String) {
            self.primaryMode = primaryMode

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            primaryMode = try container.decode(String.self, forKey: .primaryMode)

            do {
                paymentMethods = try container.decode([PaymentMethod].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primaryMode, forKey: .primaryMode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PaymentInfo
         Used By: Order
     */

    class PaymentInfo: Codable {
        public var primaryMode: String

        public var paymentMethods: [PaymentMethod]?

        public enum CodingKeys: String, CodingKey {
            case primaryMode = "primary_mode"

            case paymentMethods = "payment_methods"
        }

        public init(paymentMethods: [PaymentMethod]? = nil, primaryMode: String) {
            self.primaryMode = primaryMode

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            primaryMode = try container.decode(String.self, forKey: .primaryMode)

            do {
                paymentMethods = try container.decode([PaymentMethod].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primaryMode, forKey: .primaryMode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
