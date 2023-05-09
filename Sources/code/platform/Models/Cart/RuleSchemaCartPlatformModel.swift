

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: RuleSchema
         Used By: Cart
     */

    class RuleSchema: Codable {
        public var key: Double?

        public var min: Double?

        public var value: Double?

        public var max: Double?

        public var discountQty: Double?

        public enum CodingKeys: String, CodingKey {
            case key

            case min

            case value

            case max

            case discountQty = "discount_qty"
        }

        public init(discountQty: Double? = nil, key: Double? = nil, max: Double? = nil, min: Double? = nil, value: Double? = nil) {
            self.key = key

            self.min = min

            self.value = value

            self.max = max

            self.discountQty = discountQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(Double.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Double.self, forKey: .min)

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
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountQty = try container.decode(Double.self, forKey: .discountQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(discountQty, forKey: .discountQty)
        }
    }
}
