import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductPrice
         Used By: Cart
     */

    class ProductPrice: Codable {
        public var currencyCode: String?

        public var selling: Double?

        public var currencySymbol: String?

        public var addOn: Double?

        public var marked: Double?

        public var effective: Double?

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case selling

            case currencySymbol = "currency_symbol"

            case addOn = "add_on"

            case marked

            case effective
        }

        public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
            self.currencyCode = currencyCode

            self.selling = selling

            self.currencySymbol = currencySymbol

            self.addOn = addOn

            self.marked = marked

            self.effective = effective
        }

        public func duplicate() -> ProductPrice {
            let dict = self.dictionary!
            let copy = ProductPrice(dictionary: dict)!
            return copy
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
                selling = try container.decode(Double.self, forKey: .selling)

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
                addOn = try container.decode(Double.self, forKey: .addOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(selling, forKey: .selling)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(addOn, forKey: .addOn)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }
}
