

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentMethod
         Used By: Cart
     */
    class PaymentMethod: Codable {
        public var name: String?

        public var amount: Int?

        public var mode: String

        public var payment: String?

        public var meta: Meta

        public enum CodingKeys: String, CodingKey {
            case name

            case amount

            case mode

            case payment

            case meta
        }

        public init(amount: Int? = nil, meta: Meta, mode: String, name: String? = nil, payment: String? = nil) {
            self.name = name

            self.amount = amount

            self.mode = mode

            self.payment = payment

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            do {
                payment = try container.decode(String.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(Meta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
