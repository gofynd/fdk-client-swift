

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationConfig
        Used By: Serviceability
    */

    class ApplicationConfig: Codable {
        
        
        public var ruleIds: [String]?
        
        public var sort: [String]?
        
        public var applicationId: String?
        
        public var companyId: Int?
        
        public var manualPriority: [String]?
        
        public var zones: ZoneConfig?
        
        public var buyboxConfig: BuyboxConfig?
        
        public var buyboxRuleConfig: BuyboxRuleConfig?
        
        public var promiseTypes: [PromiseType]?
        
        public var promiseConfig: PromiseConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case sort = "sort"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case manualPriority = "manual_priority"
            
            case zones = "zones"
            
            case buyboxConfig = "buybox_config"
            
            case buyboxRuleConfig = "buybox_rule_config"
            
            case promiseTypes = "promise_types"
            
            case promiseConfig = "promise_config"
            
        }

        public init(applicationId: String? = nil, buyboxConfig: BuyboxConfig? = nil, buyboxRuleConfig: BuyboxRuleConfig? = nil, companyId: Int? = nil, manualPriority: [String]? = nil, promiseConfig: PromiseConfig? = nil, promiseTypes: [PromiseType]? = nil, ruleIds: [String]? = nil, sort: [String]? = nil, zones: ZoneConfig? = nil) {
            
            self.ruleIds = ruleIds
            
            self.sort = sort
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.manualPriority = manualPriority
            
            self.zones = zones
            
            self.buyboxConfig = buyboxConfig
            
            self.buyboxRuleConfig = buyboxRuleConfig
            
            self.promiseTypes = promiseTypes
            
            self.promiseConfig = promiseConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zones = try container.decode(ZoneConfig.self, forKey: .zones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyboxConfig = try container.decode(BuyboxConfig.self, forKey: .buyboxConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyboxRuleConfig = try container.decode(BuyboxRuleConfig.self, forKey: .buyboxRuleConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseTypes = try container.decode([PromiseType].self, forKey: .promiseTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseConfig = try container.decode(PromiseConfig.self, forKey: .promiseConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
            
            
            try? container.encodeIfPresent(buyboxConfig, forKey: .buyboxConfig)
            
            
            
            
            try? container.encodeIfPresent(buyboxRuleConfig, forKey: .buyboxRuleConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseTypes, forKey: .promiseTypes)
            
            
            
            
            try? container.encodeIfPresent(promiseConfig, forKey: .promiseConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationConfig
        Used By: Serviceability
    */

    class ApplicationConfig: Codable {
        
        
        public var ruleIds: [String]?
        
        public var sort: [String]?
        
        public var applicationId: String?
        
        public var companyId: Int?
        
        public var manualPriority: [String]?
        
        public var zones: ZoneConfig?
        
        public var buyboxConfig: BuyboxConfig?
        
        public var buyboxRuleConfig: BuyboxRuleConfig?
        
        public var promiseTypes: [PromiseType]?
        
        public var promiseConfig: PromiseConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case sort = "sort"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case manualPriority = "manual_priority"
            
            case zones = "zones"
            
            case buyboxConfig = "buybox_config"
            
            case buyboxRuleConfig = "buybox_rule_config"
            
            case promiseTypes = "promise_types"
            
            case promiseConfig = "promise_config"
            
        }

        public init(applicationId: String? = nil, buyboxConfig: BuyboxConfig? = nil, buyboxRuleConfig: BuyboxRuleConfig? = nil, companyId: Int? = nil, manualPriority: [String]? = nil, promiseConfig: PromiseConfig? = nil, promiseTypes: [PromiseType]? = nil, ruleIds: [String]? = nil, sort: [String]? = nil, zones: ZoneConfig? = nil) {
            
            self.ruleIds = ruleIds
            
            self.sort = sort
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.manualPriority = manualPriority
            
            self.zones = zones
            
            self.buyboxConfig = buyboxConfig
            
            self.buyboxRuleConfig = buyboxRuleConfig
            
            self.promiseTypes = promiseTypes
            
            self.promiseConfig = promiseConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zones = try container.decode(ZoneConfig.self, forKey: .zones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyboxConfig = try container.decode(BuyboxConfig.self, forKey: .buyboxConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyboxRuleConfig = try container.decode(BuyboxRuleConfig.self, forKey: .buyboxRuleConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseTypes = try container.decode([PromiseType].self, forKey: .promiseTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseConfig = try container.decode(PromiseConfig.self, forKey: .promiseConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
            
            
            try? container.encodeIfPresent(buyboxConfig, forKey: .buyboxConfig)
            
            
            
            
            try? container.encodeIfPresent(buyboxRuleConfig, forKey: .buyboxRuleConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseTypes, forKey: .promiseTypes)
            
            
            
            
            try? container.encodeIfPresent(promiseConfig, forKey: .promiseConfig)
            
            
        }
        
    }
}


