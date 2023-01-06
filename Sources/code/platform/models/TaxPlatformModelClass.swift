

import Foundation
public extension PlatformClient {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var name: String

        public var breakup: [[String: Any]]

        public var taxExempt: Bool

        public var amount: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case name

            case breakup

            case taxExempt = "tax_exempt"

            case amount
        }

        public init(amount: [String: Any], breakup: [[String: Any]], name: String, taxExempt: Bool) {
            self.name = name

            self.breakup = breakup

            self.taxExempt = taxExempt

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            taxExempt = try container.decode(Bool.self, forKey: .taxExempt)

            amount = try container.decode([String: Any].self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(taxExempt, forKey: .taxExempt)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
