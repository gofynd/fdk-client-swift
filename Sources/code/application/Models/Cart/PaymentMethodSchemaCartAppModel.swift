

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: PaymentMethodSchema
         Used By: Cart
     */
    class PaymentMethodSchema: Codable {
        public var amount: Double?

        public var mode: String

        public var paymentMeta: PaymentMetaSchema

        public var name: String?

        public var payment: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case mode

            case paymentMeta = "payment_meta"

            case name

            case payment
        }

        public init(amount: Double? = nil, mode: String, name: String? = nil, payment: String? = nil, paymentMeta: PaymentMetaSchema) {
            self.amount = amount

            self.mode = mode

            self.paymentMeta = paymentMeta

            self.name = name

            self.payment = payment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            paymentMeta = try container.decode(PaymentMetaSchema.self, forKey: .paymentMeta)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(paymentMeta, forKey: .paymentMeta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(payment, forKey: .payment)
        }
    }
}
