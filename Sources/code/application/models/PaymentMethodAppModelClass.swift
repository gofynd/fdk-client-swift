

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentMethod
         Used By: Cart
     */
    class PaymentMethod: Codable {
        public var name: String?

        public var paymentMeta: PaymentMeta

        public var mode: String

        public var amount: Double?

        public var payment: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case paymentMeta = "payment_meta"

            case mode

            case amount

            case payment
        }

        public init(amount: Double? = nil, mode: String, name: String? = nil, payment: String? = nil, paymentMeta: PaymentMeta) {
            self.name = name

            self.paymentMeta = paymentMeta

            self.mode = mode

            self.amount = amount

            self.payment = payment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMeta = try container.decode(PaymentMeta.self, forKey: .paymentMeta)

            mode = try container.decode(String.self, forKey: .mode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(paymentMeta, forKey: .paymentMeta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(payment, forKey: .payment)
        }
    }
}
