

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentConfirmationMode
         Used By: Payment
     */

    class PaymentConfirmationMode: Codable {
        public var name: String?

        public var meta: [String: Any]?

        public var mode: String

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case name

            case meta

            case mode

            case amount
        }

        public init(amount: Double, meta: [String: Any]? = nil, mode: String, name: String? = nil) {
            self.name = name

            self.meta = meta

            self.mode = mode

            self.amount = amount
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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
