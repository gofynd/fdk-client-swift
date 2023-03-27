

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var name: String

        public var amount: [String: Any]

        public var breakup: [[String: Any]]

        public var taxExempt: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case amount

            case breakup

            case taxExempt = "tax_exempt"
        }

        public init(amount: [String: Any], breakup: [[String: Any]], name: String, taxExempt: Bool) {
            self.name = name

            self.amount = amount

            self.breakup = breakup

            self.taxExempt = taxExempt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            amount = try container.decode([String: Any].self, forKey: .amount)

            breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            taxExempt = try container.decode(Bool.self, forKey: .taxExempt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(taxExempt, forKey: .taxExempt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var name: String

        public var amount: [String: Any]

        public var breakup: [[String: Any]]

        public var taxExempt: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case amount

            case breakup

            case taxExempt = "tax_exempt"
        }

        public init(amount: [String: Any], breakup: [[String: Any]], name: String, taxExempt: Bool) {
            self.name = name

            self.amount = amount

            self.breakup = breakup

            self.taxExempt = taxExempt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            amount = try container.decode([String: Any].self, forKey: .amount)

            breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            taxExempt = try container.decode(Bool.self, forKey: .taxExempt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(taxExempt, forKey: .taxExempt)
        }
    }
}
