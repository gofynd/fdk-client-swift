

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: PromotionOffersResponseObject
        Used By: Cart
    */
    class PromotionOffersResponseObject: Codable {
        
        public var availablePromotions: [PromotionOffer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case availablePromotions = "available_promotions"
            
        }

        public init(availablePromotions: [PromotionOffer]? = nil) {
            
            self.availablePromotions = availablePromotions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                availablePromotions = try container.decode([PromotionOffer].self, forKey: .availablePromotions)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(availablePromotions, forKey: .availablePromotions)
            
            
        }
        
    }
}
