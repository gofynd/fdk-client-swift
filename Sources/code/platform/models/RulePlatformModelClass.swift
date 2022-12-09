

import Foundation
public extension PlatformClient {
    /*
         Model: Rule
         Used By: Cart
     */

    class Rule: Codable {
        public var min: Double?

        public var key: Double?

        public var discountQty: Double?

        public var value: Double?

        public var max: Double?

        public enum CodingKeys: String, CodingKey {
            case min

            case key

            case discountQty = "discount_qty"

            case value

            case max
        }

        public init(discountQty: Double? = nil, key: Double? = nil, max: Double? = nil, min: Double? = nil, value: Double? = nil) {
            self.min = min

            self.key = key

            self.discountQty = discountQty

            self.value = value

            self.max = max
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(discountQty, forKey: .discountQty)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }
}
