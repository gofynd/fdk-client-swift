

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: RulePriorityDetails
        Used By: Serviceability
    */

    class RulePriorityDetails: Codable {
        
        
        public var ruleId: String
        
        public var priority: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case priority = "priority"
            
        }

        public init(priority: Int, ruleId: String) {
            
            self.ruleId = ruleId
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleId = try container.decode(String.self, forKey: .ruleId)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: RulePriorityDetails
        Used By: Serviceability
    */

    class RulePriorityDetails: Codable {
        
        
        public var ruleId: String
        
        public var priority: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case priority = "priority"
            
        }

        public init(priority: Int, ruleId: String) {
            
            self.ruleId = ruleId
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleId = try container.decode(String.self, forKey: .ruleId)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}


