

import Foundation
public extension PlatformClient {
    /*
         Model: ProductPrice
         Used By: Cart
     */

    class ProductPrice: Codable {
        public var marked: Double?

        public var selling: Double?

        public var currencyCode: String?

        public var addOn: Double?

        public var currencySymbol: String?

        public var effective: Double?

        public enum CodingKeys: String, CodingKey {
            case marked

            case selling

            case currencyCode = "currency_code"

            case addOn = "add_on"

            case currencySymbol = "currency_symbol"

            case effective
        }

        public init(addOn: Double? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, effective: Double? = nil, marked: Double? = nil, selling: Double? = nil) {
            self.marked = marked

            self.selling = selling

            self.currencyCode = currencyCode

            self.addOn = addOn

            self.currencySymbol = currencySymbol

            self.effective = effective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marked = try container.decode(Double.self, forKey: .marked)

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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(selling, forKey: .selling)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(addOn, forKey: .addOn)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }
}
