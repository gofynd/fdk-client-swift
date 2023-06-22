

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: MultiTenderPaymentMethod
         Used By: Cart
     */

    class MultiTenderPaymentMethod: Codable {
        public var mode: String

        public var meta: MultiTenderPaymentMeta?

        public var name: String?

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case mode

            case meta

            case name

            case amount
        }

        public init(amount: Double, meta: MultiTenderPaymentMeta? = nil, mode: String, name: String? = nil) {
            self.mode = mode

            self.meta = meta

            self.name = name

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                meta = try container.decode(MultiTenderPaymentMeta.self, forKey: .meta)

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

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
