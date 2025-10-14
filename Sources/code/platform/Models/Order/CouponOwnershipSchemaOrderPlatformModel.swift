

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CouponOwnershipSchema
        Used By: Order
    */

    class CouponOwnershipSchema: Codable {
        
        
        public var payableCategory: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableCategory = "payable_category"
            
        }

        public init(payableCategory: String) {
            
            self.payableCategory = payableCategory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CouponOwnershipSchema
        Used By: Order
    */

    class CouponOwnershipSchema: Codable {
        
        
        public var payableCategory: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableCategory = "payable_category"
            
        }

        public init(payableCategory: String) {
            
            self.payableCategory = payableCategory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
        }
        
    }
}


