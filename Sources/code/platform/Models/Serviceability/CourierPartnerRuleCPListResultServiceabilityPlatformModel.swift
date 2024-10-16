

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerRuleCPListResult
        Used By: Serviceability
    */

    class CourierPartnerRuleCPListResult: Codable {
        
        
        public var accountId: String?
        
        public var extensionId: String?
        
        public var isSelfShip: Bool?
        
        public var schemeRules: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case extensionId = "extension_id"
            
            case isSelfShip = "is_self_ship"
            
            case schemeRules = "scheme_rules"
            
        }

        public init(accountId: String? = nil, extensionId: String? = nil, isSelfShip: Bool? = nil, schemeRules: [String: Any]? = nil) {
            
            self.accountId = accountId
            
            self.extensionId = extensionId
            
            self.isSelfShip = isSelfShip
            
            self.schemeRules = schemeRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    accountId = try container.decode(String.self, forKey: .accountId)
                
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
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schemeRules = try container.decode([String: Any].self, forKey: .schemeRules)
                
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
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerRuleCPListResult
        Used By: Serviceability
    */

    class CourierPartnerRuleCPListResult: Codable {
        
        
        public var accountId: String?
        
        public var extensionId: String?
        
        public var isSelfShip: Bool?
        
        public var schemeRules: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case extensionId = "extension_id"
            
            case isSelfShip = "is_self_ship"
            
            case schemeRules = "scheme_rules"
            
        }

        public init(accountId: String? = nil, extensionId: String? = nil, isSelfShip: Bool? = nil, schemeRules: [String: Any]? = nil) {
            
            self.accountId = accountId
            
            self.extensionId = extensionId
            
            self.isSelfShip = isSelfShip
            
            self.schemeRules = schemeRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    accountId = try container.decode(String.self, forKey: .accountId)
                
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
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schemeRules = try container.decode([String: Any].self, forKey: .schemeRules)
                
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
            
            
        }
        
    }
}


