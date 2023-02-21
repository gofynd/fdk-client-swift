

import Foundation
public extension PlatformClient {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var rate: Double

        public var breakup: [[String: Any]]?

        public var name: String

        public var amount: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case rate

            case breakup

            case name

            case amount
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.rate = rate

            self.breakup = breakup

            self.name = name

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rate = try container.decode(Double.self, forKey: .rate)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            amount = try container.decode([String: Any].self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
