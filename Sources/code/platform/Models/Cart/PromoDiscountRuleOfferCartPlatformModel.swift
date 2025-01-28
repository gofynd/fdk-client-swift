

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromoDiscountRuleOffer
        Used By: Cart
    */

    class PromoDiscountRuleOffer: Codable {
        
        
        public var maxOfferQuantity: Double?
        
        public var discountPercentage: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case maxOfferQuantity = "max_offer_quantity"
            
            case discountPercentage = "discount_percentage"
            
        }

        public init(discountPercentage: Double? = nil, maxOfferQuantity: Double? = nil) {
            
            self.maxOfferQuantity = maxOfferQuantity
            
            self.discountPercentage = discountPercentage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maxOfferQuantity = try container.decode(Double.self, forKey: .maxOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)
            
            
            
            
            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
            
            
        }
        
    }
}


