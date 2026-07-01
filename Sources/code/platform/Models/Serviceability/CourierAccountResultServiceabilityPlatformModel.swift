

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierAccountResult
        Used By: Serviceability
    */

    class CourierAccountResult: Codable {
        
        
        public var accountId: String
        
        public var companyId: Int?
        
        public var schemeId: String
        
        public var extensionId: String?
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        
        public var schemeRules: CourierPartnerSchemeModel
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case companyId = "company_id"
            
            case schemeId = "scheme_id"
            
            case extensionId = "extension_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
            case schemeRules = "scheme_rules"
            
        }

        public init(accountId: String, companyId: Int? = nil, extensionId: String? = nil, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, schemeRules: CourierPartnerSchemeModel, stage: String) {
            
            self.accountId = accountId
            
            self.companyId = companyId
            
            self.schemeId = schemeId
            
            self.extensionId = extensionId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
            self.schemeRules = schemeRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
            
                schemeRules = try container.decode(CourierPartnerSchemeModel.self, forKey: .schemeRules)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
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
        
        public var companyId: Int?
        
        public var schemeId: String
        
        public var extensionId: String?
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        
        public var schemeRules: CourierPartnerSchemeModel
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case companyId = "company_id"
            
            case schemeId = "scheme_id"
            
            case extensionId = "extension_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
            case schemeRules = "scheme_rules"
            
        }

        public init(accountId: String, companyId: Int? = nil, extensionId: String? = nil, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, schemeRules: CourierPartnerSchemeModel, stage: String) {
            
            self.accountId = accountId
            
            self.companyId = companyId
            
            self.schemeId = schemeId
            
            self.extensionId = extensionId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
            self.schemeRules = schemeRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
            
                schemeRules = try container.decode(CourierPartnerSchemeModel.self, forKey: .schemeRules)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
            
            
            try? container.encodeIfPresent(schemeRules, forKey: .schemeRules)
            
            
        }
        
    }
}


