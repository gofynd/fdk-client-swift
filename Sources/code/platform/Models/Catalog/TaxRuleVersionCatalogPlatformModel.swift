

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxRuleVersion
        Used By: Catalog
    */

    class TaxRuleVersion: Codable {
        
        
        public var items: [TaxVersionDetail]
        
        public var rule: TaxRule
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case rule = "rule"
            
            case page = "page"
            
        }

        public init(items: [TaxVersionDetail], page: Page, rule: TaxRule) {
            
            self.items = items
            
            self.rule = rule
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([TaxVersionDetail].self, forKey: .items)
                
            
            
            
                rule = try container.decode(TaxRule.self, forKey: .rule)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxRuleVersion
        Used By: Catalog
    */

    class TaxRuleVersion: Codable {
        
        
        public var items: [TaxVersionDetail]
        
        public var rule: TaxRule
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case rule = "rule"
            
            case page = "page"
            
        }

        public init(items: [TaxVersionDetail], page: Page, rule: TaxRule) {
            
            self.items = items
            
            self.rule = rule
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([TaxVersionDetail].self, forKey: .items)
                
            
            
            
                rule = try container.decode(TaxRule.self, forKey: .rule)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


