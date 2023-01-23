

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentOptionAndFlow
         Used By: Payment
     */
    class PaymentOptionAndFlow: Codable {
        public var paymentOption: [RootPaymentMode]

        public var paymentFlows: PaymentFlow

        public enum CodingKeys: String, CodingKey {
            case paymentOption = "payment_option"

            case paymentFlows = "payment_flows"
        }

        public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
            self.paymentOption = paymentOption

            self.paymentFlows = paymentFlows
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)

            paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)

            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
        }
    }
}
