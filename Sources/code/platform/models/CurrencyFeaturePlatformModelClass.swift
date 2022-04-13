import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CurrencyFeature
         Used By: Configuration
     */

    class CurrencyFeature: Codable {
        public var value: [String]?

        public var type: String?

        public var defaultCurrency: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case type

            case defaultCurrency = "default_currency"
        }

        public init(defaultCurrency: String?, type: String?, value: [String]?) {
            self.value = value

            self.type = type

            self.defaultCurrency = defaultCurrency
        }

        public func duplicate() -> CurrencyFeature {
            let dict = self.dictionary!
            let copy = CurrencyFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode([String].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultCurrency = try container.decode(String.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)
        }
    }
}
