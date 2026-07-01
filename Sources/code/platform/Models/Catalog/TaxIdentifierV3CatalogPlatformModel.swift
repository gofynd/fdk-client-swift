

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxIdentifierV3
        Used By: Catalog
    */

    class TaxIdentifierV3: Codable {
        
        
        public var taxRuleId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case taxRuleId = "tax_rule_id"
            
        }

        public init(taxRuleId: String) {
            
            self.taxRuleId = taxRuleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                taxRuleId = try container.decode(String.self, forKey: .taxRuleId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(taxRuleId, forKey: .taxRuleId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxIdentifierV3
        Used By: Catalog
    */

    class TaxIdentifierV3: Codable {
        
        
        public var taxRuleId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case taxRuleId = "tax_rule_id"
            
        }

        public init(taxRuleId: String) {
            
            self.taxRuleId = taxRuleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                taxRuleId = try container.decode(String.self, forKey: .taxRuleId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(taxRuleId, forKey: .taxRuleId)
            
            
        }
        
    }
}


