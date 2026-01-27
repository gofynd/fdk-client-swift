

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: GetOfferResult
        Used By: Cart
    */
    class GetOfferResult: Codable {
        
        public var availableOffers: [OfferListItem]
        
        public var page: PageCoupon
        

        public enum CodingKeys: String, CodingKey {
            
            case availableOffers = "available_offers"
            
            case page = "page"
            
        }

        public init(availableOffers: [OfferListItem], page: PageCoupon) {
            
            self.availableOffers = availableOffers
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            availableOffers = try container.decode([OfferListItem].self, forKey: .availableOffers)
            
            
            
            
            page = try container.decode(PageCoupon.self, forKey: .page)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(availableOffers, forKey: .availableOffers)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}
