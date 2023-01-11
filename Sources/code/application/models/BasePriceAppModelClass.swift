

import Foundation
public extension ApplicationClient {
    /*
         Model: BasePrice
         Used By: Cart
     */
    class BasePrice: Codable {
        public var effective: Double?

        public var currencySymbol: String?

        public var currencyCode: String?

        public var marked: Double?

        public enum CodingKeys: String, CodingKey {
            case effective

            case currencySymbol = "currency_symbol"

            case currencyCode = "currency_code"

            case marked
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, effective: Double? = nil, marked: Double? = nil) {
            self.effective = effective

            self.currencySymbol = currencySymbol

            self.currencyCode = currencyCode

            self.marked = marked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effective = try container.decode(Double.self, forKey: .effective)

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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }
}
