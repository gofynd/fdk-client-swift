import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: DiscountProperties
         Used By: Rewards
     */
    class DiscountProperties: Codable {
        public var absolute: Double?

        public var currency: String?

        public var displayAbsolute: String?

        public var displayPercent: String?

        public var percent: Double?

        public enum CodingKeys: String, CodingKey {
            case absolute

            case currency

            case displayAbsolute = "display_absolute"

            case displayPercent = "display_percent"

            case percent
        }

        public init(absolute: Double?, currency: String?, displayAbsolute: String?, displayPercent: String?, percent: Double?) {
            self.absolute = absolute

            self.currency = currency

            self.displayAbsolute = displayAbsolute

            self.displayPercent = displayPercent

            self.percent = percent
        }

        public func duplicate() -> DiscountProperties {
            let dict = self.dictionary!
            let copy = DiscountProperties(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                absolute = try container.decode(Double.self, forKey: .absolute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayAbsolute = try container.decode(String.self, forKey: .displayAbsolute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayPercent = try container.decode(String.self, forKey: .displayPercent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                percent = try container.decode(Double.self, forKey: .percent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(absolute, forKey: .absolute)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(displayAbsolute, forKey: .displayAbsolute)

            try? container.encodeIfPresent(displayPercent, forKey: .displayPercent)

            try? container.encodeIfPresent(percent, forKey: .percent)
        }
    }
}
