

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: PaymentMethod
         Used By: Cart
     */
    class PaymentMethod: Codable {
        public var mode: String

        public var payment: String?

        public var name: String?

        public var paymentMeta: PaymentMeta

        public var amount: Double?

        public enum CodingKeys: String, CodingKey {
            case mode

            case payment

            case name

            case paymentMeta = "payment_meta"

            case amount
        }

        public init(amount: Double? = nil, mode: String, name: String? = nil, payment: String? = nil, paymentMeta: PaymentMeta) {
            self.mode = mode

            self.payment = payment

            self.name = name

            self.paymentMeta = paymentMeta

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                payment = try container.decode(String.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMeta = try container.decode(PaymentMeta.self, forKey: .paymentMeta)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(paymentMeta, forKey: .paymentMeta)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
