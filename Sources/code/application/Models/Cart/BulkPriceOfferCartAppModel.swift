

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: BulkPriceOffer
         Used By: Cart
     */
    class BulkPriceOffer: Codable {
        public var seller: OfferSeller?

        public var offers: [OfferItem]?

        public enum CodingKeys: String, CodingKey {
            case seller

            case offers
        }

        public init(offers: [OfferItem]? = nil, seller: OfferSeller? = nil) {
            self.seller = seller

            self.offers = offers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                seller = try container.decode(OfferSeller.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offers = try container.decode([OfferItem].self, forKey: .offers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(offers, forKey: .offers)
        }
    }
}
