

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TaxDetailsSchema
        Used By: Order
    */

    class TaxDetailsSchema: Codable {
        
        
        public var hsCode: String
        
        public var taxRuleId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case hsCode = "hs_code"
            
            case taxRuleId = "tax_rule_id"
            
        }

        public init(hsCode: String, taxRuleId: String) {
            
            self.hsCode = hsCode
            
            self.taxRuleId = taxRuleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                hsCode = try container.decode(String.self, forKey: .hsCode)
                
            
            
            
                taxRuleId = try container.decode(String.self, forKey: .taxRuleId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hsCode, forKey: .hsCode)
            
            
            
            
            try? container.encodeIfPresent(taxRuleId, forKey: .taxRuleId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TaxDetailsSchema
        Used By: Order
    */

    class TaxDetailsSchema: Codable {
        
        
        public var hsCode: String
        
        public var taxRuleId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case hsCode = "hs_code"
            
            case taxRuleId = "tax_rule_id"
            
        }

        public init(hsCode: String, taxRuleId: String) {
            
            self.hsCode = hsCode
            
            self.taxRuleId = taxRuleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                hsCode = try container.decode(String.self, forKey: .hsCode)
                
            
            
            
                taxRuleId = try container.decode(String.self, forKey: .taxRuleId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hsCode, forKey: .hsCode)
            
            
            
            
            try? container.encodeIfPresent(taxRuleId, forKey: .taxRuleId)
            
            
        }
        
    }
}


