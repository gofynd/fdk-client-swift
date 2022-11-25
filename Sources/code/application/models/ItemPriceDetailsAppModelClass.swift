

import Foundation
public extension ApplicationClient {
    /*
         Model: ItemPriceDetails
         Used By: Order
     */
    class ItemPriceDetails: Codable {
        public var effective: EffectiveValues?

        public var marked: MarkedValues?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case effective

            case marked

            case currency
        }

        public init(currency: String? = nil, effective: EffectiveValues? = nil, marked: MarkedValues? = nil) {
            self.effective = effective

            self.marked = marked

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effective = try container.decode(EffectiveValues.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(MarkedValues.self, forKey: .marked)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
