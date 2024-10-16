

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierAccountResult
        Used By: Serviceability
    */

    class CourierAccountResult: Codable {
        
        
        public var accountId: String
        
        public var schemeId: String
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        
        public var schemeRules: CourierPartnerSchemeModel
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case schemeId = "scheme_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
            case schemeRules = "scheme_rules"
            
        }

        public init(accountId: String, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, schemeRules: CourierPartnerSchemeModel, stage: String) {
            
            self.accountId = accountId
            
            self.schemeId = schemeId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
            self.schemeRules = schemeRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
            
                schemeRules = try container.decode(CourierPartnerSchemeModel.self, forKey: .schemeRules)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
            
            
            try? container.encodeIfPresent(schemeRules, forKey: .schemeRules)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierAccountResult
        Used By: Serviceability
    */

    class CourierAccountResult: Codable {
        
        
        public var accountId: String
        
        public var schemeId: String
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        
        public var schemeRules: CourierPartnerSchemeModel
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case schemeId = "scheme_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
            case schemeRules = "scheme_rules"
            
        }

        public init(accountId: String, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, schemeRules: CourierPartnerSchemeModel, stage: String) {
            
            self.accountId = accountId
            
            self.schemeId = schemeId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
            self.schemeRules = schemeRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
            
                schemeRules = try container.decode(CourierPartnerSchemeModel.self, forKey: .schemeRules)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
            
            
            try? container.encodeIfPresent(schemeRules, forKey: .schemeRules)
            
            
        }
        
    }
}


