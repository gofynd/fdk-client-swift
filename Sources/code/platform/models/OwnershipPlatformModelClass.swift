

import Foundation
public extension PlatformClient {
    /*
        Model: Ownership
        Used By: Cart
    */

    class Ownership: Codable {
        
        
        public var payableBy: String
        
        public var payableCategory: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableBy = "payable_by"
            
            case payableCategory = "payable_category"
            
        }

        public init(payableBy: String, payableCategory: String) {
            
            self.payableBy = payableBy
            
            self.payableCategory = payableCategory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableBy = try container.decode(String.self, forKey: .payableBy)
                
            
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
        }
        
    }
}
