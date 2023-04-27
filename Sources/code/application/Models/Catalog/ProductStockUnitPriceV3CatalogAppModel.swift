

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductStockUnitPriceV3
         Used By: Catalog
     */
    class ProductStockUnitPriceV3: Codable {
        public var unit: String?

        public var currencyCode: String?

        public var price: Double?

        public var currencySymbol: String?

        public enum CodingKeys: String, CodingKey {
            case unit

            case currencyCode = "currency_code"

            case price

            case currencySymbol = "currency_symbol"
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, price: Double? = nil, unit: String? = nil) {
            self.unit = unit

            self.currencyCode = currencyCode

            self.price = price

            self.currencySymbol = currencySymbol
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

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
                price = try container.decode(Double.self, forKey: .price)

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

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        }
    }
}