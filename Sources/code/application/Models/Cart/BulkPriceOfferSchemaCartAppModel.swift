

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: BulkPriceOfferSchema
         Used By: Cart
     */
    class BulkPriceOfferSchema: Codable {
        public var offers: [OfferItemSchema]?

        public var seller: OfferSellerSchema?

        public enum CodingKeys: String, CodingKey {
            case offers

            case seller
        }

        public init(offers: [OfferItemSchema]? = nil, seller: OfferSellerSchema? = nil) {
            self.offers = offers

            self.seller = seller
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                offers = try container.decode([OfferItemSchema].self, forKey: .offers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(OfferSellerSchema.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(offers, forKey: .offers)

            try? container.encodeIfPresent(seller, forKey: .seller)
        }
    }
}
