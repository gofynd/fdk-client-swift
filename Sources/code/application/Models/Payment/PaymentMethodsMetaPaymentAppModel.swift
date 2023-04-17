

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentMethodsMeta
         Used By: Payment
     */
    class PaymentMethodsMeta: Codable {
        public var merchantCode: String

        public var paymentGateway: String

        public var paymentIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case merchantCode = "merchant_code"

            case paymentGateway = "payment_gateway"

            case paymentIdentifier = "payment_identifier"
        }

        public init(merchantCode: String, paymentGateway: String, paymentIdentifier: String) {
            self.merchantCode = merchantCode

            self.paymentGateway = paymentGateway

            self.paymentIdentifier = paymentIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }
}
