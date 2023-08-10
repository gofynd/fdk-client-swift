

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: DPCompanyRuleRequest
        Used By: Serviceability
    */

    class DPCompanyRuleRequest: Codable {
        
        
        public var ruleIds: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
        }

        public init(ruleIds: [String]) {
            
            self.ruleIds = ruleIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: DPCompanyRuleRequest
        Used By: Serviceability
    */

    class DPCompanyRuleRequest: Codable {
        
        
        public var ruleIds: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
        }

        public init(ruleIds: [String]) {
            
            self.ruleIds = ruleIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
        }
        
    }
}


