

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxRuleItem
        Used By: Catalog
    */

    class TaxRuleItem: Codable {
        
        
        public var versions: [TaxVersionDetail]
        
        public var rule: TaxRule
        

        public enum CodingKeys: String, CodingKey {
            
            case versions = "versions"
            
            case rule = "rule"
            
        }

        public init(rule: TaxRule, versions: [TaxVersionDetail]) {
            
            self.versions = versions
            
            self.rule = rule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                versions = try container.decode([TaxVersionDetail].self, forKey: .versions)
                
            
            
            
                rule = try container.decode(TaxRule.self, forKey: .rule)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(versions, forKey: .versions)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxRuleItem
        Used By: Catalog
    */

    class TaxRuleItem: Codable {
        
        
        public var versions: [TaxVersionDetail]
        
        public var rule: TaxRule
        

        public enum CodingKeys: String, CodingKey {
            
            case versions = "versions"
            
            case rule = "rule"
            
        }

        public init(rule: TaxRule, versions: [TaxVersionDetail]) {
            
            self.versions = versions
            
            self.rule = rule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                versions = try container.decode([TaxVersionDetail].self, forKey: .versions)
                
            
            
            
                rule = try container.decode(TaxRule.self, forKey: .rule)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(versions, forKey: .versions)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
        }
        
    }
}


