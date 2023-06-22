

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserPaymentMethods
         Used By: Payment
     */
    class CreateOrderUserPaymentMethods: Codable {
        public var meta: PaymentMethodsMeta

        public var mode: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case mode

            case name
        }

        public init(meta: PaymentMethodsMeta, mode: String, name: String) {
            self.meta = meta

            self.mode = mode

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(PaymentMethodsMeta.self, forKey: .meta)

            mode = try container.decode(String.self, forKey: .mode)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
