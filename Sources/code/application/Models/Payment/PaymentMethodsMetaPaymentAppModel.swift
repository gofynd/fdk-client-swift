

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentMethodsMeta
         Used By: Payment
     */
    class PaymentMethodsMeta: Codable {
        public var paymentIdentifier: String

        public var paymentGateway: String

        public var merchantCode: String

        public enum CodingKeys: String, CodingKey {
            case paymentIdentifier = "payment_identifier"

            case paymentGateway = "payment_gateway"

            case merchantCode = "merchant_code"
        }

        public init(merchantCode: String, paymentGateway: String, paymentIdentifier: String) {
            self.paymentIdentifier = paymentIdentifier

            self.paymentGateway = paymentGateway

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}
