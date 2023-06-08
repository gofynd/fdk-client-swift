

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: BreakupValues
         Used By: Order
     */
    class BreakupValues: Codable {
        public var name: String?

        public var value: Double?

        public var currencySymbol: String?

        public var display: String?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case value

            case currencySymbol = "currency_symbol"

            case display

            case currencyCode = "currency_code"
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, display: String? = nil, name: String? = nil, value: Double? = nil) {
            self.name = name

            self.value = value

            self.currencySymbol = currencySymbol

            self.display = display

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
