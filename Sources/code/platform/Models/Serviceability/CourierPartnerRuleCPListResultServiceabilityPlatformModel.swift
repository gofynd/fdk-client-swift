

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerRuleCPListResult
        Used By: Serviceability
    */

    class CourierPartnerRuleCPListResult: Codable {
        
        
        public var accountId: String
        
        public var extensionId: String
        
        public var isSelfShip: Bool
        
        public var schemeRules: CourierPartnerSchemeDetailsModel?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case extensionId = "extension_id"
            
            case isSelfShip = "is_self_ship"
            
            case schemeRules = "scheme_rules"
            
            case stage = "stage"
            
        }

        public init(accountId: String, extensionId: String, isSelfShip: Bool, schemeRules: CourierPartnerSchemeDetailsModel? = nil, stage: String? = nil) {
            
            self.accountId = accountId
            
            self.extensionId = extensionId
            
            self.isSelfShip = isSelfShip
            
            self.schemeRules = schemeRules
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                do {
                    schemeRules = try container.decode(CourierPartnerSchemeDetailsModel.self, forKey: .schemeRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(schemeRules, forKey: .schemeRules)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerRuleCPListResult
        Used By: Serviceability
    */

    class CourierPartnerRuleCPListResult: Codable {
        
        
        public var accountId: String
        
        public var extensionId: String
        
        public var isSelfShip: Bool
        
        public var schemeRules: CourierPartnerSchemeDetailsModel?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case extensionId = "extension_id"
            
            case isSelfShip = "is_self_ship"
            
            case schemeRules = "scheme_rules"
            
            case stage = "stage"
            
        }

        public init(accountId: String, extensionId: String, isSelfShip: Bool, schemeRules: CourierPartnerSchemeDetailsModel? = nil, stage: String? = nil) {
            
            self.accountId = accountId
            
            self.extensionId = extensionId
            
            self.isSelfShip = isSelfShip
            
            self.schemeRules = schemeRules
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
            
            
            
                do {
                    schemeRules = try container.decode(CourierPartnerSchemeDetailsModel.self, forKey: .schemeRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(schemeRules, forKey: .schemeRules)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}


