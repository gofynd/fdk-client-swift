

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: DomainStoreInStoreConfig
        Used By: Configuration
    */

    class DomainStoreInStoreConfig: Codable {
        
        
        public var domainName: String?
        
        public var domainUrl: String?
        
        public var domainId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case domainName = "domain_name"
            
            case domainUrl = "domain_url"
            
            case domainId = "domain_id"
            
        }

        public init(domainId: String? = nil, domainName: String? = nil, domainUrl: String? = nil) {
            
            self.domainName = domainName
            
            self.domainUrl = domainUrl
            
            self.domainId = domainId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domainName = try container.decode(String.self, forKey: .domainName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    domainUrl = try container.decode(String.self, forKey: .domainUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    domainId = try container.decode(String.self, forKey: .domainId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domainName, forKey: .domainName)
            
            
            
            
            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)
            
            
            
            
            try? container.encodeIfPresent(domainId, forKey: .domainId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: DomainStoreInStoreConfig
        Used By: Configuration
    */

    class DomainStoreInStoreConfig: Codable {
        
        
        public var domainName: String?
        
        public var domainUrl: String?
        
        public var domainId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case domainName = "domain_name"
            
            case domainUrl = "domain_url"
            
            case domainId = "domain_id"
            
        }

        public init(domainId: String? = nil, domainName: String? = nil, domainUrl: String? = nil) {
            
            self.domainName = domainName
            
            self.domainUrl = domainUrl
            
            self.domainId = domainId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domainName = try container.decode(String.self, forKey: .domainName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    domainUrl = try container.decode(String.self, forKey: .domainUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    domainId = try container.decode(String.self, forKey: .domainId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domainName, forKey: .domainName)
            
            
            
            
            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)
            
            
            
            
            try? container.encodeIfPresent(domainId, forKey: .domainId)
            
            
        }
        
    }
}


