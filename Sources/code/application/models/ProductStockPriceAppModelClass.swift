

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductStockPrice
         Used By: Catalog
     */
    class ProductStockPrice: Codable {
        public var effective: Int?

        public var currency: String?

        public var marked: Int?

        public enum CodingKeys: String, CodingKey {
            case effective

            case currency

            case marked
        }

        public init(currency: String? = nil, effective: Int? = nil, marked: Int? = nil) {
            self.effective = effective

            self.currency = currency

            self.marked = marked
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
                currency = try container.decode(String.self, forKey: .currency)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }
}
