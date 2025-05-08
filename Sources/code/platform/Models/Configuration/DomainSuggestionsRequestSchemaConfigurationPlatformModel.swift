

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: DomainSuggestionsRequestSchema
        Used By: Configuration
    */

    class DomainSuggestionsRequestSchema: Codable {
        
        
        public var domainUrl: String?
        
        public var customDomain: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case domainUrl = "domain_url"
            
            case customDomain = "custom_domain"
            
        }

        public init(customDomain: Bool? = nil, domainUrl: String? = nil) {
            
            self.domainUrl = domainUrl
            
            self.customDomain = customDomain
            
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
                    customDomain = try container.decode(Bool.self, forKey: .customDomain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)
            
            
            
            
            try? container.encodeIfPresent(customDomain, forKey: .customDomain)
            
            
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
        
        public var customDomain: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case domainUrl = "domain_url"
            
            case customDomain = "custom_domain"
            
        }

        public init(customDomain: Bool? = nil, domainUrl: String? = nil) {
            
            self.domainUrl = domainUrl
            
            self.customDomain = customDomain
            
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
                    customDomain = try container.decode(Bool.self, forKey: .customDomain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)
            
            
            
            
            try? container.encodeIfPresent(customDomain, forKey: .customDomain)
            
            
        }
        
    }
}


