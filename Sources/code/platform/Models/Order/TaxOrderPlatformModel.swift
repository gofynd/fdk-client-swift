

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var breakup: [[String: Any]]?

        public var rate: Double

        public var name: String

        public var amount: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case breakup

            case rate

            case name

            case amount
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.breakup = breakup

            self.rate = rate

            self.name = name

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rate = try container.decode(Double.self, forKey: .rate)

            name = try container.decode(String.self, forKey: .name)

            amount = try container.decode([String: Any].self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var breakup: [[String: Any]]?

        public var rate: Double

        public var name: String

        public var amount: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case breakup

            case rate

            case name

            case amount
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.breakup = breakup

            self.rate = rate

            self.name = name

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rate = try container.decode(Double.self, forKey: .rate)

            name = try container.decode(String.self, forKey: .name)

            amount = try container.decode([String: Any].self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
