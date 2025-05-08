

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierAccountUpdateDetails
        Used By: Serviceability
    */

    class CourierAccountUpdateDetails: Codable {
        
        
        public var extensionId: String
        
        public var schemeId: String
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
        }

        public init(extensionId: String, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, stage: String) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierAccountUpdateDetails
        Used By: Serviceability
    */

    class CourierAccountUpdateDetails: Codable {
        
        
        public var extensionId: String
        
        public var schemeId: String
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
        }

        public init(extensionId: String, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, stage: String) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
        }
        
    }
}


