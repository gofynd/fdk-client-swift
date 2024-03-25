

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationConfigPatchRequest
        Used By: Serviceability
    */

    class ApplicationConfigPatchRequest: Codable {
        
        
        public var buyboxConfig: BuyboxConfig?
        
        public var buyboxRuleConfig: BuyboxRuleConfig?
        
        public var promiseTypes: [PromiseType]?
        
        public var promiseConfig: PromiseConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case buyboxConfig = "buybox_config"
            
            case buyboxRuleConfig = "buybox_rule_config"
            
            case promiseTypes = "promise_types"
            
            case promiseConfig = "promise_config"
            
        }

        public init(buyboxConfig: BuyboxConfig? = nil, buyboxRuleConfig: BuyboxRuleConfig? = nil, promiseConfig: PromiseConfig? = nil, promiseTypes: [PromiseType]? = nil) {
            
            self.buyboxConfig = buyboxConfig
            
            self.buyboxRuleConfig = buyboxRuleConfig
            
            self.promiseTypes = promiseTypes
            
            self.promiseConfig = promiseConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(buyboxConfig, forKey: .buyboxConfig)
            
            
            
            
            try? container.encodeIfPresent(buyboxRuleConfig, forKey: .buyboxRuleConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseTypes, forKey: .promiseTypes)
            
            
            
            
            try? container.encodeIfPresent(promiseConfig, forKey: .promiseConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationConfigPatchRequest
        Used By: Serviceability
    */

    class ApplicationConfigPatchRequest: Codable {
        
        
        public var buyboxConfig: BuyboxConfig?
        
        public var buyboxRuleConfig: BuyboxRuleConfig?
        
        public var promiseTypes: [PromiseType]?
        
        public var promiseConfig: PromiseConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case buyboxConfig = "buybox_config"
            
            case buyboxRuleConfig = "buybox_rule_config"
            
            case promiseTypes = "promise_types"
            
            case promiseConfig = "promise_config"
            
        }

        public init(buyboxConfig: BuyboxConfig? = nil, buyboxRuleConfig: BuyboxRuleConfig? = nil, promiseConfig: PromiseConfig? = nil, promiseTypes: [PromiseType]? = nil) {
            
            self.buyboxConfig = buyboxConfig
            
            self.buyboxRuleConfig = buyboxRuleConfig
            
            self.promiseTypes = promiseTypes
            
            self.promiseConfig = promiseConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(buyboxConfig, forKey: .buyboxConfig)
            
            
            
            
            try? container.encodeIfPresent(buyboxRuleConfig, forKey: .buyboxRuleConfig)
            
            
            
            
            try? container.encodeIfPresent(promiseTypes, forKey: .promiseTypes)
            
            
            
            
            try? container.encodeIfPresent(promiseConfig, forKey: .promiseConfig)
            
            
        }
        
    }
}


