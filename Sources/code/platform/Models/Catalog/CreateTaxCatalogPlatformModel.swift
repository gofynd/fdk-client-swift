

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateTax
        Used By: Catalog
    */

    class CreateTax: Codable {
        
        
        public var rule: TaxRule?
        
        public var versions: TaxVersion?
        

        public enum CodingKeys: String, CodingKey {
            
            case rule = "rule"
            
            case versions = "versions"
            
        }

        public init(rule: TaxRule? = nil, versions: TaxVersion? = nil) {
            
            self.rule = rule
            
            self.versions = versions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    rule = try container.decode(TaxRule.self, forKey: .rule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    versions = try container.decode(TaxVersion.self, forKey: .versions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
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
        Model: CreateTax
        Used By: Catalog
    */

    class CreateTax: Codable {
        
        
        public var rule: TaxRule?
        
        public var versions: TaxVersion?
        

        public enum CodingKeys: String, CodingKey {
            
            case rule = "rule"
            
            case versions = "versions"
            
        }

        public init(rule: TaxRule? = nil, versions: TaxVersion? = nil) {
            
            self.rule = rule
            
            self.versions = versions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    rule = try container.decode(TaxRule.self, forKey: .rule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    versions = try container.decode(TaxVersion.self, forKey: .versions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(versions, forKey: .versions)
            
            
        }
        
    }
}


