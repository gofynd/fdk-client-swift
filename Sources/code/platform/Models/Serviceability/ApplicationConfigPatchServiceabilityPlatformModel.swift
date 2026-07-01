

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationConfigPatch
        Used By: Serviceability
    */

    class ApplicationConfigPatch: Codable {
        
        
        public var courierPartnerConfig: CourierPartnerConfig?
        
        public var buyboxRuleConfig: BuyboxRuleConfig?
        
        public var promiseConfig: PromiseConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case courierPartnerConfig = "courier_partner_config"
            
            case buyboxRuleConfig = "buybox_rule_config"
            
            case promiseConfig = "promise_config"
            
        }

        public init(buyboxRuleConfig: BuyboxRuleConfig? = nil, courierPartnerConfig: CourierPartnerConfig? = nil, promiseConfig: PromiseConfig? = nil) {
            
            self.courierPartnerConfig = courierPartnerConfig
            
            self.buyboxRuleConfig = buyboxRuleConfig
            
            self.promiseConfig = promiseConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(courierPartnerConfig, forKey: .courierPartnerConfig)
            
            
            
            
            try? container.encodeIfPresent(buyboxRuleConfig, forKey: .buyboxRuleConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseConfig, forKey: .promiseConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationConfigPatch
        Used By: Serviceability
    */

    class ApplicationConfigPatch: Codable {
        
        
        public var courierPartnerConfig: CourierPartnerConfig?
        
        public var buyboxRuleConfig: BuyboxRuleConfig?
        
        public var promiseConfig: PromiseConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case courierPartnerConfig = "courier_partner_config"
            
            case buyboxRuleConfig = "buybox_rule_config"
            
            case promiseConfig = "promise_config"
            
        }

        public init(buyboxRuleConfig: BuyboxRuleConfig? = nil, courierPartnerConfig: CourierPartnerConfig? = nil, promiseConfig: PromiseConfig? = nil) {
            
            self.courierPartnerConfig = courierPartnerConfig
            
            self.buyboxRuleConfig = buyboxRuleConfig
            
            self.promiseConfig = promiseConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(courierPartnerConfig, forKey: .courierPartnerConfig)
            
            
            
            
            try? container.encodeIfPresent(buyboxRuleConfig, forKey: .buyboxRuleConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseConfig, forKey: .promiseConfig)
            
            
        }
        
    }
}


