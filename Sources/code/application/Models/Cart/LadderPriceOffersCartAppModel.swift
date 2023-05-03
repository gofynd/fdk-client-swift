

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: LadderPriceOffers
         Used By: Cart
     */
    class LadderPriceOffers: Codable {
        public var currency: CurrencyInfoSchema?

        public var availableOffers: [LadderPriceOffer]?

        public enum CodingKeys: String, CodingKey {
            case currency

            case availableOffers = "available_offers"
        }

        public init(availableOffers: [LadderPriceOffer]? = nil, currency: CurrencyInfoSchema? = nil) {
            self.currency = currency

            self.availableOffers = availableOffers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currency = try container.decode(CurrencyInfoSchema.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableOffers = try container.decode([LadderPriceOffer].self, forKey: .availableOffers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(availableOffers, forKey: .availableOffers)
        }
    }
}
