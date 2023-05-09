

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: PaymentMethodSchema
         Used By: Cart
     */
    class PaymentMethodSchema: Codable {
        public var mode: String

        public var name: String?

        public var payment: String?

        public var amount: Double?

        public var paymentMeta: PaymentMetaSchema

        public enum CodingKeys: String, CodingKey {
            case mode

            case name

            case payment

            case amount

            case paymentMeta = "payment_meta"
        }

        public init(amount: Double? = nil, mode: String, name: String? = nil, payment: String? = nil, paymentMeta: PaymentMetaSchema) {
            self.mode = mode

            self.name = name

            self.payment = payment

            self.amount = amount

            self.paymentMeta = paymentMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

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

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMeta = try container.decode(PaymentMetaSchema.self, forKey: .paymentMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentMeta, forKey: .paymentMeta)
        }
    }
}
