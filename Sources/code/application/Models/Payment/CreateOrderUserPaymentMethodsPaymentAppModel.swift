

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserPaymentMethods
         Used By: Payment
     */
    class CreateOrderUserPaymentMethods: Codable {
        public var mode: String

        public var name: String

        public var meta: PaymentMethodsMeta

        public enum CodingKeys: String, CodingKey {
            case mode

            case name

            case meta
        }

        public init(meta: PaymentMethodsMeta, mode: String, name: String) {
            self.mode = mode

            self.name = name

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            name = try container.decode(String.self, forKey: .name)

            meta = try container.decode(PaymentMethodsMeta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
