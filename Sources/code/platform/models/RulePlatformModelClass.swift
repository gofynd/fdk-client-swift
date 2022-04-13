import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Rule
         Used By: Cart
     */

    class Rule: Codable {
        public var discountQty: Double?

        public var min: Double?

        public var value: Double?

        public var max: Double?

        public var key: Double?

        public enum CodingKeys: String, CodingKey {
            case discountQty = "discount_qty"

            case min

            case value

            case max

            case key
        }

        public init(discountQty: Double?, key: Double?, max: Double?, min: Double?, value: Double?) {
            self.discountQty = discountQty

            self.min = min

            self.value = value

            self.max = max

            self.key = key
        }

        public func duplicate() -> Rule {
            let dict = self.dictionary!
            let copy = Rule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discountQty = try container.decode(Double.self, forKey: .discountQty)

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
                key = try container.decode(Double.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountQty, forKey: .discountQty)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
