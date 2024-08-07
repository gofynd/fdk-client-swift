

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerList
        Used By: Serviceability
    */

    class CourierPartnerList: Codable {
        
        
        public var extensionId: String
        
        public var accountId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case accountId = "account_id"
            
        }

        public init(accountId: String, extensionId: String) {
            
            self.extensionId = extensionId
            
            self.accountId = accountId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case accountId = "account_id"
            
        }

        public init(accountId: String, extensionId: String) {
            
            self.extensionId = extensionId
            
            self.accountId = accountId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
        }
        
    }
}


