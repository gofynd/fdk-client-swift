

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: Collection
        Used By: Cart
    */

    class Collection: Codable {
        
        
        public var refundBy: String
        
        public var collectedBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case refundBy = "refund_by"
            
            case collectedBy = "collected_by"
            
        }

        public init(collectedBy: String, refundBy: String) {
            
            self.refundBy = refundBy
            
            self.collectedBy = collectedBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                refundBy = try container.decode(String.self, forKey: .refundBy)
                
            
            
            
                collectedBy = try container.decode(String.self, forKey: .collectedBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)
            
            
        }
        
    }
}


