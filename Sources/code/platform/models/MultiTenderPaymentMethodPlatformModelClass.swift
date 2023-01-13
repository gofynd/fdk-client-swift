

import Foundation
public extension PlatformClient {
    /*
         Model: MultiTenderPaymentMethod
         Used By: Payment
     */

    class MultiTenderPaymentMethod: Codable {
        public var amount: Double

        public var name: String?

        public var mode: String

        public var meta: MultiTenderPaymentMeta?

        public enum CodingKeys: String, CodingKey {
            case amount

            case name

            case mode

            case meta
        }

        public init(amount: Double, meta: MultiTenderPaymentMeta? = nil, mode: String, name: String? = nil) {
            self.amount = amount

            self.name = name

            self.mode = mode

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            do {
                meta = try container.decode(MultiTenderPaymentMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
