

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PaymentMethod
         Used By: Cart
     */

    class PaymentMethod: Codable {
        public var paymentMeta: PaymentMeta

        public var payment: String?

        public var name: String?

        public var amount: Double?

        public var mode: String

        public enum CodingKeys: String, CodingKey {
            case paymentMeta = "payment_meta"

            case payment

            case name

            case amount

            case mode
        }

        public init(amount: Double? = nil, mode: String, name: String? = nil, payment: String? = nil, paymentMeta: PaymentMeta) {
            self.paymentMeta = paymentMeta

            self.payment = payment

            self.name = name

            self.amount = amount

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMeta = try container.decode(PaymentMeta.self, forKey: .paymentMeta)

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

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMeta, forKey: .paymentMeta)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
