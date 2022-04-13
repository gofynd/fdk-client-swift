import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: MultiTenderPaymentMethod
         Used By: Cart
     */

    class MultiTenderPaymentMethod: Codable {
        public var meta: MultiTenderPaymentMeta?

        public var mode: String

        public var amount: Double

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case mode

            case amount

            case name
        }

        public init(amount: Double, meta: MultiTenderPaymentMeta?, mode: String, name: String?) {
            self.meta = meta

            self.mode = mode

            self.amount = amount

            self.name = name
        }

        public func duplicate() -> MultiTenderPaymentMethod {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(MultiTenderPaymentMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
