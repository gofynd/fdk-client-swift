

import Foundation
public extension PlatformClient {
    /*
         Model: Price1
         Used By: Catalog
     */

    class Price1: Codable {
        public var currencyCode: String?

        public var currencySymbol: String?

        public var max: Double?

        public var min: Double?

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"

            case max

            case min
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, max: Double? = nil, min: Double? = nil) {
            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol

            self.max = max

            self.min = min
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                max = try container.decode(Double.self, forKey: .max)

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

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)
        }
    }
}
