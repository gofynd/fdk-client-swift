

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionPaymentOffer
        Used By: Cart
    */

    class PromotionPaymentOffer: Codable {
        
        
        public var applicationId: String?
        
        public var buyRules: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case buyRules = "buy_rules"
            
        }

        public init(applicationId: String? = nil, buyRules: [[String: Any]]? = nil) {
            
            self.applicationId = applicationId
            
            self.buyRules = buyRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyRules = try container.decode([[String: Any]].self, forKey: .buyRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
        }
        
    }
}


