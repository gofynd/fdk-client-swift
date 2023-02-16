

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderUserPaymentMethods
         Used By: Payment
     */
    class CreateOrderUserPaymentMethods: Codable {
        public var mode: String

        public var meta: PaymentMethodsMeta

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case mode

            case meta

            case name
        }

        public init(meta: PaymentMethodsMeta, mode: String, name: String) {
            self.mode = mode

            self.meta = meta

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            meta = try container.decode(PaymentMethodsMeta.self, forKey: .meta)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
