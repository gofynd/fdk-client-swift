

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionAction
        Used By: Cart
    */

    class PromotionAction: Codable {
        
        
        public var actionDate: String?
        
        public var actionType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case actionDate = "action_date"
            
            case actionType = "action_type"
            
        }

        public init(actionDate: String? = nil, actionType: String? = nil) {
            
            self.actionDate = actionDate
            
            self.actionType = actionType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    actionDate = try container.decode(String.self, forKey: .actionDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionType = try container.decode(String.self, forKey: .actionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(actionDate, forKey: .actionDate)
            
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
        }
        
    }
}


