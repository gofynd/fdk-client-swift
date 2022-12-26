

import Foundation
public extension PlatformClient {
    /*
         Model: Charge
         Used By: Order
     */

    class Charge: Codable {
        public var name: String

        public var type: String

        public var tax: Tax

        public var amount: [String: Any]

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case type

            case tax

            case amount

            case code
        }

        public init(amount: [String: Any], code: String? = nil, name: String, tax: Tax, type: String) {
            self.name = name

            self.type = type

            self.tax = tax

            self.amount = amount

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            tax = try container.decode(Tax.self, forKey: .tax)

            amount = try container.decode([String: Any].self, forKey: .amount)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tax, forKey: .tax)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
