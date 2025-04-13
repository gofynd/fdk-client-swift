

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: DomainOptionsResponse
        Used By: Configuration
    */

    class DomainOptionsResponse: Codable {
        
        
        public var domainTypes: [DomainType]?
        
        public var networkIps: [String]?
        
        public var networkCnames: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case domainTypes = "domain_types"
            
            case networkIps = "network_ips"
            
            case networkCnames = "network_cnames"
            
        }

        public init(domainTypes: [DomainType]? = nil, networkCnames: [String]? = nil, networkIps: [String]? = nil) {
            
            self.domainTypes = domainTypes
            
            self.networkIps = networkIps
            
            self.networkCnames = networkCnames
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domainTypes = try container.decode([DomainType].self, forKey: .domainTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    networkIps = try container.decode([String].self, forKey: .networkIps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    networkCnames = try container.decode([String].self, forKey: .networkCnames)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domainTypes, forKey: .domainTypes)
            
            
            
            
            try? container.encodeIfPresent(networkIps, forKey: .networkIps)
            
            
            
            
            try? container.encodeIfPresent(networkCnames, forKey: .networkCnames)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: DomainOptionsResponse
        Used By: Configuration
    */

    class DomainOptionsResponse: Codable {
        
        
        public var domainTypes: [DomainType]?
        
        public var networkIps: [String]?
        
        public var networkCnames: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case domainTypes = "domain_types"
            
            case networkIps = "network_ips"
            
            case networkCnames = "network_cnames"
            
        }

        public init(domainTypes: [DomainType]? = nil, networkCnames: [String]? = nil, networkIps: [String]? = nil) {
            
            self.domainTypes = domainTypes
            
            self.networkIps = networkIps
            
            self.networkCnames = networkCnames
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domainTypes = try container.decode([DomainType].self, forKey: .domainTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    networkIps = try container.decode([String].self, forKey: .networkIps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    networkCnames = try container.decode([String].self, forKey: .networkCnames)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domainTypes, forKey: .domainTypes)
            
            
            
            
            try? container.encodeIfPresent(networkIps, forKey: .networkIps)
            
            
            
            
            try? container.encodeIfPresent(networkCnames, forKey: .networkCnames)
            
            
        }
        
    }
}


