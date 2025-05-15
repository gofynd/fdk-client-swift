

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ValidationConfig
        Used By: Cart
    */

    class ValidationConfig: Codable {
        
        
        public var addressMaxLimit: Int
        
        public var userAddressCount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case addressMaxLimit = "address_max_limit"
            
            case userAddressCount = "user_address_count"
            
        }

        public init(addressMaxLimit: Int, userAddressCount: Int) {
            
            self.addressMaxLimit = addressMaxLimit
            
            self.userAddressCount = userAddressCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                addressMaxLimit = try container.decode(Int.self, forKey: .addressMaxLimit)
                
            
            
            
                userAddressCount = try container.decode(Int.self, forKey: .userAddressCount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addressMaxLimit, forKey: .addressMaxLimit)
            
            
            
            
            try? container.encodeIfPresent(userAddressCount, forKey: .userAddressCount)
            
            
        }
        
    }
}


