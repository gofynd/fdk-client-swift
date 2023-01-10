

import Foundation
public extension PlatformClient {
    /*
         Model: Charge
         Used By: Order
     */

    class Charge: Codable {
        public var type: String

        public var name: String

        public var code: String?

        public var amount: [String: Any]

        public var tax: Tax

        public enum CodingKeys: String, CodingKey {
            case type

            case name

            case code

            case amount

            case tax
        }

        public init(amount: [String: Any], code: String? = nil, name: String, tax: Tax, type: String) {
            self.type = type

            self.name = name

            self.code = code

            self.amount = amount

            self.tax = tax
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode([String: Any].self, forKey: .amount)

            tax = try container.decode(Tax.self, forKey: .tax)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(tax, forKey: .tax)
        }
    }
}
