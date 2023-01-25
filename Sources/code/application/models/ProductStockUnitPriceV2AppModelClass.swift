

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductStockUnitPriceV2
         Used By: Catalog
     */
    class ProductStockUnitPriceV2: Codable {
        public var currencyCode: String?

        public var currencySymbol: String?

        public var unit: String?

        public var price: Double?

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"

            case unit

            case price
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, price: Double? = nil, unit: String? = nil) {
            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol

            self.unit = unit

            self.price = price
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
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }
}
