

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierAccountResponse
        Used By: Serviceability
    */

    class CourierAccountResponse: Codable {
        
        
        public var companyId: Int?
        
        public var extensionId: String?
        
        public var accountId: String
        
        public var schemeId: String
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        
        public var schemeRules: CourierAccountSchemeResponse
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case extensionId = "extension_id"
            
            case accountId = "account_id"
            
            case schemeId = "scheme_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
            case schemeRules = "scheme_rules"
            
        }

        public init(accountId: String, companyId: Int? = nil, extensionId: String? = nil, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, schemeRules: CourierAccountSchemeResponse, stage: String) {
            
            self.companyId = companyId
            
            self.extensionId = extensionId
            
            self.accountId = accountId
            
            self.schemeId = schemeId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
            self.schemeRules = schemeRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
            
                schemeRules = try container.decode(CourierAccountSchemeResponse.self, forKey: .schemeRules)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
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
        Model: CourierAccountResponse
        Used By: Serviceability
    */

    class CourierAccountResponse: Codable {
        
        
        public var companyId: Int?
        
        public var extensionId: String?
        
        public var accountId: String
        
        public var schemeId: String
        
        public var isSelfShip: Bool
        
        public var stage: String
        
        public var isOwnAccount: Bool
        
        public var schemeRules: CourierAccountSchemeResponse
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case extensionId = "extension_id"
            
            case accountId = "account_id"
            
            case schemeId = "scheme_id"
            
            case isSelfShip = "is_self_ship"
            
            case stage = "stage"
            
            case isOwnAccount = "is_own_account"
            
            case schemeRules = "scheme_rules"
            
        }

        public init(accountId: String, companyId: Int? = nil, extensionId: String? = nil, isOwnAccount: Bool, isSelfShip: Bool, schemeId: String, schemeRules: CourierAccountSchemeResponse, stage: String) {
            
            self.companyId = companyId
            
            self.extensionId = extensionId
            
            self.accountId = accountId
            
            self.schemeId = schemeId
            
            self.isSelfShip = isSelfShip
            
            self.stage = stage
            
            self.isOwnAccount = isOwnAccount
            
            self.schemeRules = schemeRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                schemeId = try container.decode(String.self, forKey: .schemeId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                isOwnAccount = try container.decode(Bool.self, forKey: .isOwnAccount)
                
            
            
            
                schemeRules = try container.decode(CourierAccountSchemeResponse.self, forKey: .schemeRules)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isOwnAccount, forKey: .isOwnAccount)
            
            
            
            
            try? container.encodeIfPresent(schemeRules, forKey: .schemeRules)
            
            
        }
        
    }
}


