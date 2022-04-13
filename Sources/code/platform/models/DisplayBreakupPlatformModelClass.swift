import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: DisplayBreakup
         Used By: Cart
     */

    class DisplayBreakup: Codable {
        public var value: Double?

        public var currencyCode: String?

        public var currencySymbol: String?

        public var key: String?

        public var display: String?

        public var message: [String]?

        public enum CodingKeys: String, CodingKey {
            case value

            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"

            case key

            case display

            case message
        }

        public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
            self.value = value

            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol

            self.key = key

            self.display = display

            self.message = message
        }

        public func duplicate() -> DisplayBreakup {
            let dict = self.dictionary!
            let copy = DisplayBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode([String].self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
