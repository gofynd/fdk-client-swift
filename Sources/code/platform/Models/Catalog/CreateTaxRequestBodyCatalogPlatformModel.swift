

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateTaxRequestBody
        Used By: Catalog
    */

    class CreateTaxRequestBody: Codable {
        
        
        public var rule: TaxReqBodyRule
        
        public var versions: [TaxReqBodyVersion]
        

        public enum CodingKeys: String, CodingKey {
            
            case rule = "rule"
            
            case versions = "versions"
            
        }

        public init(rule: TaxReqBodyRule, versions: [TaxReqBodyVersion]) {
            
            self.rule = rule
            
            self.versions = versions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                rule = try container.decode(TaxReqBodyRule.self, forKey: .rule)
                
            
            
            
                versions = try container.decode([TaxReqBodyVersion].self, forKey: .versions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(versions, forKey: .versions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateTaxRequestBody
        Used By: Catalog
    */

    class CreateTaxRequestBody: Codable {
        
        
        public var rule: TaxReqBodyRule
        
        public var versions: [TaxReqBodyVersion]
        

        public enum CodingKeys: String, CodingKey {
            
            case rule = "rule"
            
            case versions = "versions"
            
        }

        public init(rule: TaxReqBodyRule, versions: [TaxReqBodyVersion]) {
            
            self.rule = rule
            
            self.versions = versions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                rule = try container.decode(TaxReqBodyRule.self, forKey: .rule)
                
            
            
            
                versions = try container.decode([TaxReqBodyVersion].self, forKey: .versions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(versions, forKey: .versions)
            
            
        }
        
    }
}


