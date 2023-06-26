

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentConfirmationRequest
         Used By: Payment
     */

    class PaymentConfirmationRequest: Codable {
        public var paymentMethods: [MultiTenderPaymentMethod]

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case orderId = "order_id"
        }

        public init(orderId: String, paymentMethods: [MultiTenderPaymentMethod]) {
            self.paymentMethods = paymentMethods

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentConfirmationRequest
         Used By: Payment
     */

    class PaymentConfirmationRequest: Codable {
        public var paymentMethods: [MultiTenderPaymentMethod]

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case orderId = "order_id"
        }

        public init(orderId: String, paymentMethods: [MultiTenderPaymentMethod]) {
            self.paymentMethods = paymentMethods

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
