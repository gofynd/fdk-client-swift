

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: Rule
         Used By: Cart
     */

    class Rule: Codable {
        public var key: Double?

        public var discountQty: Double?

        public var max: Double?

        public var value: Double?

        public var min: Double?

        public enum CodingKeys: String, CodingKey {
            case key

            case discountQty = "discount_qty"

            case max

            case value

            case min
        }

        public init(discountQty: Double? = nil, key: Double? = nil, max: Double? = nil, min: Double? = nil, value: Double? = nil) {
            self.key = key

            self.discountQty = discountQty

            self.max = max

            self.value = value

            self.min = min
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
                discountQty = try container.decode(Double.self, forKey: .discountQty)

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
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(discountQty, forKey: .discountQty)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(min, forKey: .min)
        }
    }
}
