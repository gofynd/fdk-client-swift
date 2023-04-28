

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var amount: [String: Any]

        public var rate: Double

        public var breakup: [[String: Any]]?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case rate

            case breakup

            case name
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.amount = amount

            self.rate = rate

            self.breakup = breakup

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode([String: Any].self, forKey: .amount)

            rate = try container.decode(Double.self, forKey: .rate)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var amount: [String: Any]

        public var rate: Double

        public var breakup: [[String: Any]]?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case rate

            case breakup

            case name
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.amount = amount

            self.rate = rate

            self.breakup = breakup

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode([String: Any].self, forKey: .amount)

            rate = try container.decode(Double.self, forKey: .rate)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
