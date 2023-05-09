

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentMethodsMeta
         Used By: Payment
     */
    class PaymentMethodsMeta: Codable {
        public var paymentGateway: String

        public var merchantCode: String

        public var paymentIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case paymentGateway = "payment_gateway"

            case merchantCode = "merchant_code"

            case paymentIdentifier = "payment_identifier"
        }

        public init(merchantCode: String, paymentGateway: String, paymentIdentifier: String) {
            self.paymentGateway = paymentGateway

            self.merchantCode = merchantCode

            self.paymentIdentifier = paymentIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }
}
