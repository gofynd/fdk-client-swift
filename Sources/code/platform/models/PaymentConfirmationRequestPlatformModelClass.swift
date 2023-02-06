

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentConfirmationRequest
         Used By: Payment
     */

    class PaymentConfirmationRequest: Codable {
        public var orderId: String

        public var paymentMethods: [MultiTenderPaymentMethod]

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case paymentMethods = "payment_methods"
        }

        public init(orderId: String, paymentMethods: [MultiTenderPaymentMethod]) {
            self.orderId = orderId

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
