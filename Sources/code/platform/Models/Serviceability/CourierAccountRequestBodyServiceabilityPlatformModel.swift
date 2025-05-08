

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierAccountRequestBody
        Used By: Serviceability
    */

    class CourierAccountRequestBody: Codable {
        
        
        public var extensionId: String
        
        public var accountId: String?
        
        public var schemeId: String
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case accountId = "account_id"
            
            case schemeId = "scheme_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
        }

        public init(accountId: String? = nil, extensionId: String, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, stage: String) {
            
            self.extensionId = extensionId
            
            self.accountId = accountId
            
            self.schemeId = schemeId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                do {
                    accountId = try container.decode(String.self, forKey: .accountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierAccountRequestBody
        Used By: Serviceability
    */

    class CourierAccountRequestBody: Codable {
        
        
        public var extensionId: String
        
        public var accountId: String?
        
        public var schemeId: String
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case accountId = "account_id"
            
            case schemeId = "scheme_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
        }

        public init(accountId: String? = nil, extensionId: String, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, stage: String) {
            
            self.extensionId = extensionId
            
            self.accountId = accountId
            
            self.schemeId = schemeId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                do {
                    accountId = try container.decode(String.self, forKey: .accountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
        }
        
    }
}


