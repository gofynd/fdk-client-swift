

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PaymentMethod
         Used By: Cart
     */

    class PaymentMethod: Codable {
        public var paymentMeta: PaymentMeta

        public var amount: Double?

        public var payment: String?

        public var mode: String

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case paymentMeta = "payment_meta"

            case amount

            case payment

            case mode

            case name
        }

        public init(amount: Double? = nil, mode: String, name: String? = nil, payment: String? = nil, paymentMeta: PaymentMeta) {
            self.paymentMeta = paymentMeta

            self.amount = amount

            self.payment = payment

            self.mode = mode

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMeta = try container.decode(PaymentMeta.self, forKey: .paymentMeta)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(String.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMeta, forKey: .paymentMeta)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
