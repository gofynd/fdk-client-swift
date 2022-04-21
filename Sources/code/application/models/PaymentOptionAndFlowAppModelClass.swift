

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentOptionAndFlow
         Used By: Payment
     */
    class PaymentOptionAndFlow: Codable {
        public var paymentFlows: PaymentFlow

        public var paymentOption: [RootPaymentMode]

        public enum CodingKeys: String, CodingKey {
            case paymentFlows = "payment_flows"

            case paymentOption = "payment_option"
        }

        public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
            self.paymentFlows = paymentFlows

            self.paymentOption = paymentOption
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)

            paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)

            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
        }
    }
}
