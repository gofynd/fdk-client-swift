import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentConfirmationMode
         Used By: Payment
     */

    class PaymentConfirmationMode: Codable {
        public var mode: String

        public var meta: [String: Any]?

        public var name: String?

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case mode

            case meta

            case name

            case amount
        }

        public init(amount: Double, meta: [String: Any]?, mode: String, name: String?) {
            self.mode = mode

            self.meta = meta

            self.name = name

            self.amount = amount
        }

        public func duplicate() -> PaymentConfirmationMode {
            let dict = self.dictionary!
            let copy = PaymentConfirmationMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
