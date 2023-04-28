

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentMethodsMeta
         Used By: Payment
     */
    class PaymentMethodsMeta: Codable {
        public var merchantCode: String

        public var paymentIdentifier: String

        public var paymentGateway: String

        public enum CodingKeys: String, CodingKey {
            case merchantCode = "merchant_code"

            case paymentIdentifier = "payment_identifier"

            case paymentGateway = "payment_gateway"
        }

        public init(merchantCode: String, paymentGateway: String, paymentIdentifier: String) {
            self.merchantCode = merchantCode

            self.paymentIdentifier = paymentIdentifier

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
        }
    }
}
