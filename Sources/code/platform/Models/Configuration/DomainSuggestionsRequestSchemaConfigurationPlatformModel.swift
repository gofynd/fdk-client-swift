

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: DomainSuggestionsRequestSchema
        Used By: Configuration
    */

    class DomainSuggestionsRequestSchema: Codable {
        
        
        public var domainUrl: String?
        
        public var isCustomDomain: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case domainUrl = "domain_url"
            
            case isCustomDomain = "is_custom_domain"
            
        }

        public init(domainUrl: String? = nil, isCustomDomain: Bool? = nil) {
            
            self.domainUrl = domainUrl
            
            self.isCustomDomain = isCustomDomain
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domainUrl = try container.decode(String.self, forKey: .domainUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCustomDomain = try container.decode(Bool.self, forKey: .isCustomDomain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)
            
            
            
            
            try? container.encodeIfPresent(isCustomDomain, forKey: .isCustomDomain)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: DomainSuggestionsRequestSchema
        Used By: Configuration
    */

    class DomainSuggestionsRequestSchema: Codable {
        
        
        public var domainUrl: String?
        
        public var isCustomDomain: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case domainUrl = "domain_url"
            
            case isCustomDomain = "is_custom_domain"
            
        }

        public init(domainUrl: String? = nil, isCustomDomain: Bool? = nil) {
            
            self.domainUrl = domainUrl
            
            self.isCustomDomain = isCustomDomain
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domainUrl = try container.decode(String.self, forKey: .domainUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCustomDomain = try container.decode(Bool.self, forKey: .isCustomDomain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)
            
            
            
            
            try? container.encodeIfPresent(isCustomDomain, forKey: .isCustomDomain)
            
            
        }
        
    }
}


