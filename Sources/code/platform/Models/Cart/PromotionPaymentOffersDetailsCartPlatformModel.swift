

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionPaymentOffersDetails
        Used By: Cart
    */

    class PromotionPaymentOffersDetails: Codable {
        
        
        public var success: Bool?
        
        public var promotions: [PromotionPaymentOffer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case promotions = "promotions"
            
        }

        public init(promotions: [PromotionPaymentOffer]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.promotions = promotions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotions = try container.decode([PromotionPaymentOffer].self, forKey: .promotions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(promotions, forKey: .promotions)
            
            
        }
        
    }
}


