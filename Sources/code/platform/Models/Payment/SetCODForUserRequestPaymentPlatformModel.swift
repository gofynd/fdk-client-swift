

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SetCODForUserRequest
        Used By: Payment
    */

    class SetCODForUserRequest: Codable {
        
        
        public var mobileno: String
        
        public var isActive: Bool
        
        public var merchantUserId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case mobileno = "mobileno"
            
            case isActive = "is_active"
            
            case merchantUserId = "merchant_user_id"
            
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            
            self.mobileno = mobileno
            
            self.isActive = isActive
            
            self.merchantUserId = merchantUserId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                mobileno = try container.decode(String.self, forKey: .mobileno)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mobileno, forKey: .mobileno)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SetCODForUserRequest
        Used By: Payment
    */

    class SetCODForUserRequest: Codable {
        
        
        public var mobileno: String
        
        public var isActive: Bool
        
        public var merchantUserId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case mobileno = "mobileno"
            
            case isActive = "is_active"
            
            case merchantUserId = "merchant_user_id"
            
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            
            self.mobileno = mobileno
            
            self.isActive = isActive
            
            self.merchantUserId = merchantUserId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                mobileno = try container.decode(String.self, forKey: .mobileno)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mobileno, forKey: .mobileno)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
            
            
        }
        
    }
}


