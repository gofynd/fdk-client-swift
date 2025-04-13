

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PriceAdjustmentRestrictions
        Used By: Cart
    */

    class PriceAdjustmentRestrictions: Codable {
        
        
        public var postOrder: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case postOrder = "post_order"
            
        }

        public init(postOrder: [String: Any]? = nil) {
            
            self.postOrder = postOrder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    postOrder = try container.decode([String: Any].self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
        }
        
    }
}


