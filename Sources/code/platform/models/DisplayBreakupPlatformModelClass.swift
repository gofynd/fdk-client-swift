

import Foundation
public extension PlatformClient {
    /*
         Model: DisplayBreakup
         Used By: Cart
     */

    class DisplayBreakup: Codable {
        public var key: String?

        public var message: [String]?

        public var currencyCode: String?

        public var value: Double?

        public var display: String?

        public var currencySymbol: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case message

            case currencyCode = "currency_code"

            case value

            case display

            case currencySymbol = "currency_symbol"
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, display: String? = nil, key: String? = nil, message: [String]? = nil, value: Double? = nil) {
            self.key = key

            self.message = message

            self.currencyCode = currencyCode

            self.value = value

            self.display = display

            self.currencySymbol = currencySymbol
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

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

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
                display = try container.decode(String.self, forKey: .display)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        }
    }
}
