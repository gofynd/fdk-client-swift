

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationConfigGetResponse
        Used By: Serviceability
    */

    class ApplicationConfigGetResponse: Codable {
        
        
        public var zones: ZoneConfig?
        
        public var courierPartnerConfig: CourierPartnerConfig?
        
        public var buyboxRuleConfig: BuyboxRuleConfig?
        
        public var promiseConfig: PromiseConfig?
        
        public var promiseTypes: [PromiseType]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zones = "zones"
            
            case courierPartnerConfig = "courier_partner_config"
            
            case buyboxRuleConfig = "buybox_rule_config"
            
            case promiseConfig = "promise_config"
            
            case promiseTypes = "promise_types"
            
        }

        public init(buyboxRuleConfig: BuyboxRuleConfig? = nil, courierPartnerConfig: CourierPartnerConfig? = nil, promiseConfig: PromiseConfig? = nil, promiseTypes: [PromiseType]? = nil, zones: ZoneConfig? = nil) {
            
            self.zones = zones
            
            self.courierPartnerConfig = courierPartnerConfig
            
            self.buyboxRuleConfig = buyboxRuleConfig
            
            self.promiseConfig = promiseConfig
            
            self.promiseTypes = promiseTypes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zones = try container.decode(ZoneConfig.self, forKey: .zones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartnerConfig = try container.decode(CourierPartnerConfig.self, forKey: .courierPartnerConfig)
                
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
                    promiseConfig = try container.decode(PromiseConfig.self, forKey: .promiseConfig)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerConfig, forKey: .courierPartnerConfig)
            
            
            
            
            try? container.encodeIfPresent(buyboxRuleConfig, forKey: .buyboxRuleConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseConfig, forKey: .promiseConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseTypes, forKey: .promiseTypes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationConfigGetResponse
        Used By: Serviceability
    */

    class ApplicationConfigGetResponse: Codable {
        
        
        public var zones: ZoneConfig?
        
        public var courierPartnerConfig: CourierPartnerConfig?
        
        public var buyboxRuleConfig: BuyboxRuleConfig?
        
        public var promiseConfig: PromiseConfig?
        
        public var promiseTypes: [PromiseType]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zones = "zones"
            
            case courierPartnerConfig = "courier_partner_config"
            
            case buyboxRuleConfig = "buybox_rule_config"
            
            case promiseConfig = "promise_config"
            
            case promiseTypes = "promise_types"
            
        }

        public init(buyboxRuleConfig: BuyboxRuleConfig? = nil, courierPartnerConfig: CourierPartnerConfig? = nil, promiseConfig: PromiseConfig? = nil, promiseTypes: [PromiseType]? = nil, zones: ZoneConfig? = nil) {
            
            self.zones = zones
            
            self.courierPartnerConfig = courierPartnerConfig
            
            self.buyboxRuleConfig = buyboxRuleConfig
            
            self.promiseConfig = promiseConfig
            
            self.promiseTypes = promiseTypes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zones = try container.decode(ZoneConfig.self, forKey: .zones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartnerConfig = try container.decode(CourierPartnerConfig.self, forKey: .courierPartnerConfig)
                
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
                    promiseConfig = try container.decode(PromiseConfig.self, forKey: .promiseConfig)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerConfig, forKey: .courierPartnerConfig)
            
            
            
            
            try? container.encodeIfPresent(buyboxRuleConfig, forKey: .buyboxRuleConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseConfig, forKey: .promiseConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseTypes, forKey: .promiseTypes)
            
            
        }
        
    }
}


