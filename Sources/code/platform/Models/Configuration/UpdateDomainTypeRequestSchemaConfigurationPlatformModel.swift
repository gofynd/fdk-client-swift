

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: UpdateDomainTypeRequestSchema
        Used By: Configuration
    */

    class UpdateDomainTypeRequestSchema: Codable {
        
        
        public var domain: UpdateDomain?
        
        public var action: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case domain = "domain"
            
            case action = "action"
            
        }

        public init(action: String? = nil, domain: UpdateDomain? = nil) {
            
            self.domain = domain
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domain = try container.decode(UpdateDomain.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: UpdateDomainTypeRequestSchema
        Used By: Configuration
    */

    class UpdateDomainTypeRequestSchema: Codable {
        
        
        public var domain: UpdateDomain?
        
        public var action: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case domain = "domain"
            
            case action = "action"
            
        }

        public init(action: String? = nil, domain: UpdateDomain? = nil) {
            
            self.domain = domain
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domain = try container.decode(UpdateDomain.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}


