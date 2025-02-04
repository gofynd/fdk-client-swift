

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: DomainSuggestionsResponseSchema
        Used By: Configuration
    */

    class DomainSuggestionsResponseSchema: Codable {
        
        
        public var domains: [DomainSuggestion]?
        

        public enum CodingKeys: String, CodingKey {
            
            case domains = "domains"
            
        }

        public init(domains: [DomainSuggestion]? = nil) {
            
            self.domains = domains
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domains = try container.decode([DomainSuggestion].self, forKey: .domains)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domains, forKey: .domains)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: DomainSuggestionsResponseSchema
        Used By: Configuration
    */

    class DomainSuggestionsResponseSchema: Codable {
        
        
        public var domains: [DomainSuggestion]?
        

        public enum CodingKeys: String, CodingKey {
            
            case domains = "domains"
            
        }

        public init(domains: [DomainSuggestion]? = nil) {
            
            self.domains = domains
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domains = try container.decode([DomainSuggestion].self, forKey: .domains)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domains, forKey: .domains)
            
            
        }
        
    }
}


