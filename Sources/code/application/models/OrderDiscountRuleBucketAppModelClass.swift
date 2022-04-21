

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderDiscountRuleBucket
         Used By: Rewards
     */
    class OrderDiscountRuleBucket: Codable {
        public var high: Double?

        public var low: Double?

        public var max: Double?

        public var value: Double?

        public var valueType: String?

        public enum CodingKeys: String, CodingKey {
            case high

            case low

            case max

            case value

            case valueType = "value_type"
        }

        public init(high: Double? = nil, low: Double? = nil, max: Double? = nil, value: Double? = nil, valueType: String? = nil) {
            self.high = high

            self.low = low

            self.max = max

            self.value = value

            self.valueType = valueType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                high = try container.decode(Double.self, forKey: .high)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                low = try container.decode(Double.self, forKey: .low)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueType = try container.decode(String.self, forKey: .valueType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(high, forKey: .high)

            try? container.encodeIfPresent(low, forKey: .low)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(valueType, forKey: .valueType)
        }
    }
}
