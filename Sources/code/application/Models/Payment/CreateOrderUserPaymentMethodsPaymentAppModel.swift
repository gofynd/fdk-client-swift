

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserPaymentMethods
         Used By: Payment
     */
    class CreateOrderUserPaymentMethods: Codable {
        public var meta: PaymentMethodsMeta

        public var name: String

        public var mode: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case name

            case mode
        }

        public init(meta: PaymentMethodsMeta, mode: String, name: String) {
            self.meta = meta

            self.name = name

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(PaymentMethodsMeta.self, forKey: .meta)

            name = try container.decode(String.self, forKey: .name)

            mode = try container.decode(String.self, forKey: .mode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
