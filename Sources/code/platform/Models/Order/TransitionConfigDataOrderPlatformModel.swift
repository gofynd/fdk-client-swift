

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TransitionConfigData
        Used By: Order
    */

    class TransitionConfigData: Codable {
        
        
        public var conditions: TransitionConfigCondition?
        
        public var configs: [Config]?
        

        public enum CodingKeys: String, CodingKey {
            
            case conditions = "conditions"
            
            case configs = "configs"
            
        }

        public init(conditions: TransitionConfigCondition? = nil, configs: [Config]? = nil) {
            
            self.conditions = conditions
            
            self.configs = configs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    conditions = try container.decode(TransitionConfigCondition.self, forKey: .conditions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configs = try container.decode([Config].self, forKey: .configs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(configs, forKey: .configs)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TransitionConfigData
        Used By: Order
    */

    class TransitionConfigData: Codable {
        
        
        public var conditions: TransitionConfigCondition?
        
        public var configs: [Config]?
        

        public enum CodingKeys: String, CodingKey {
            
            case conditions = "conditions"
            
            case configs = "configs"
            
        }

        public init(conditions: TransitionConfigCondition? = nil, configs: [Config]? = nil) {
            
            self.conditions = conditions
            
            self.configs = configs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    conditions = try container.decode(TransitionConfigCondition.self, forKey: .conditions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configs = try container.decode([Config].self, forKey: .configs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(configs, forKey: .configs)
            
            
        }
        
    }
}


