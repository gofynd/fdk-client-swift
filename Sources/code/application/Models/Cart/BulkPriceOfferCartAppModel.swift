

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: BulkPriceOffer
        Used By: Cart
    */
    class BulkPriceOffer: Codable {
        
        public var offers: [OfferItem]?
        
        public var seller: OfferSeller?
        
        public var articleId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case offers = "offers"
            
            case seller = "seller"
            
            case articleId = "article_id"
            
        }

        public init(articleId: String? = nil, offers: [OfferItem]? = nil, seller: OfferSeller? = nil) {
            
            self.offers = offers
            
            self.seller = seller
            
            self.articleId = articleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                offers = try container.decode([OfferItem].self, forKey: .offers)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                seller = try container.decode(OfferSeller.self, forKey: .seller)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleId = try container.decode(String.self, forKey: .articleId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(offers, forKey: .offers)
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
        }
        
    }
}
