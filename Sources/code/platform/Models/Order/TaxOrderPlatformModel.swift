

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var breakup: [[String: Any]]?

        public var amount: [String: Any]

        public var name: String

        public var rate: Double

        public enum CodingKeys: String, CodingKey {
            case breakup

            case amount

            case name

            case rate
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.breakup = breakup

            self.amount = amount

            self.name = name

            self.rate = rate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode([String: Any].self, forKey: .amount)

            name = try container.decode(String.self, forKey: .name)

            rate = try container.decode(Double.self, forKey: .rate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rate, forKey: .rate)
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

        public var amount: [String: Any]

        public var name: String

        public var rate: Double

        public enum CodingKeys: String, CodingKey {
            case breakup

            case amount

            case name

            case rate
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.breakup = breakup

            self.amount = amount

            self.name = name

            self.rate = rate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode([String: Any].self, forKey: .amount)

            name = try container.decode(String.self, forKey: .name)

            rate = try container.decode(Double.self, forKey: .rate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rate, forKey: .rate)
        }
    }
}
