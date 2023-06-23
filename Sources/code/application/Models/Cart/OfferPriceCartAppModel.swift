

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: OfferPrice
         Used By: Cart
     */
    class OfferPrice: Codable {
        public var effective: Int?

        public var marked: Int?

        public var currencySymbol: String?

        public var bulkEffective: Double?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case effective

            case marked

            case currencySymbol = "currency_symbol"

            case bulkEffective = "bulk_effective"

            case currencyCode = "currency_code"
        }

        public init(bulkEffective: Double? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, effective: Int? = nil, marked: Int? = nil) {
            self.effective = effective

            self.marked = marked

            self.currencySymbol = currencySymbol

            self.bulkEffective = bulkEffective

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effective = try container.decode(Int.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Int.self, forKey: .marked)

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
                bulkEffective = try container.decode(Double.self, forKey: .bulkEffective)

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

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
