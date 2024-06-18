

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerList
        Used By: Serviceability
    */

    class CourierPartnerList: Codable {
        
        
        public var extensionId: String
        
        public var accountId: String
        
        public var name: String
        
        public var isSelfShip: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case accountId = "account_id"
            
            case name = "name"
            
            case isSelfShip = "is_self_ship"
            
        }

        public init(accountId: String, extensionId: String, isSelfShip: Bool, name: String) {
            
            self.extensionId = extensionId
            
            self.accountId = accountId
            
            self.name = name
            
            self.isSelfShip = isSelfShip
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerList
        Used By: Serviceability
    */

    class CourierPartnerList: Codable {
        
        
        public var extensionId: String
        
        public var accountId: String
        
        public var name: String
        
        public var isSelfShip: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case accountId = "account_id"
            
            case name = "name"
            
            case isSelfShip = "is_self_ship"
            
        }

        public init(accountId: String, extensionId: String, isSelfShip: Bool, name: String) {
            
            self.extensionId = extensionId
            
            self.accountId = accountId
            
            self.name = name
            
            self.isSelfShip = isSelfShip
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
        }
        
    }
}


