

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentMethodsMeta
         Used By: Payment
     */
    class PaymentMethodsMeta: Codable {
        public var paymentGateway: String

        public var paymentIdentifier: String

        public var merchantCode: String

        public enum CodingKeys: String, CodingKey {
            case paymentGateway = "payment_gateway"

            case paymentIdentifier = "payment_identifier"

            case merchantCode = "merchant_code"
        }

        public init(merchantCode: String, paymentGateway: String, paymentIdentifier: String) {
            self.paymentGateway = paymentGateway

            self.paymentIdentifier = paymentIdentifier

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}
