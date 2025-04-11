

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DistributionSchema
        Used By: Order
    */

    class DistributionSchema: Codable {
        
        
        public var type: String
        
        public var logic: String
        
        public var rule: RuleSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case logic = "logic"
            
            case rule = "rule"
            
        }

        public init(logic: String, rule: RuleSchema? = nil, type: String) {
            
            self.type = type
            
            self.logic = logic
            
            self.rule = rule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                logic = try container.decode(String.self, forKey: .logic)
                
            
            
            
                do {
                    rule = try container.decode(RuleSchema.self, forKey: .rule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(logic, forKey: .logic)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DistributionSchema
        Used By: Order
    */

    class DistributionSchema: Codable {
        
        
        public var type: String
        
        public var logic: String
        
        public var rule: RuleSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case logic = "logic"
            
            case rule = "rule"
            
        }

        public init(logic: String, rule: RuleSchema? = nil, type: String) {
            
            self.type = type
            
            self.logic = logic
            
            self.rule = rule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                logic = try container.decode(String.self, forKey: .logic)
                
            
            
            
                do {
                    rule = try container.decode(RuleSchema.self, forKey: .rule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(logic, forKey: .logic)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
        }
        
    }
}


