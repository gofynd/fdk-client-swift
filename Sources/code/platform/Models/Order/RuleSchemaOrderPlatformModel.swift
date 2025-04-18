

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleSchema
        Used By: Order
    */

    class RuleSchema: Codable {
        
        
        public var conditions: RuleConditionsSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case conditions = "conditions"
            
        }

        public init(conditions: RuleConditionsSchema) {
            
            self.conditions = conditions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                conditions = try container.decode(RuleConditionsSchema.self, forKey: .conditions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleSchema
        Used By: Order
    */

    class RuleSchema: Codable {
        
        
        public var conditions: RuleConditionsSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case conditions = "conditions"
            
        }

        public init(conditions: RuleConditionsSchema) {
            
            self.conditions = conditions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                conditions = try container.decode(RuleConditionsSchema.self, forKey: .conditions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
        }
        
    }
}


