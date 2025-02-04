

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: CreateApplicationRequestSchema
        Used By: Configuration
    */

    class CreateApplicationRequestSchema: Codable {
        
        
        public var app: App?
        
        public var configuration: ApplicationInventory?
        
        public var domain: AppDomain?
        

        public enum CodingKeys: String, CodingKey {
            
            case app = "app"
            
            case configuration = "configuration"
            
            case domain = "domain"
            
        }

        public init(app: App? = nil, configuration: ApplicationInventory? = nil, domain: AppDomain? = nil) {
            
            self.app = app
            
            self.configuration = configuration
            
            self.domain = domain
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    app = try container.decode(App.self, forKey: .app)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configuration = try container.decode(ApplicationInventory.self, forKey: .configuration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    domain = try container.decode(AppDomain.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            
            
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: CreateApplicationRequestSchema
        Used By: Configuration
    */

    class CreateApplicationRequestSchema: Codable {
        
        
        public var app: App?
        
        public var configuration: ApplicationInventory?
        
        public var domain: AppDomain?
        

        public enum CodingKeys: String, CodingKey {
            
            case app = "app"
            
            case configuration = "configuration"
            
            case domain = "domain"
            
        }

        public init(app: App? = nil, configuration: ApplicationInventory? = nil, domain: AppDomain? = nil) {
            
            self.app = app
            
            self.configuration = configuration
            
            self.domain = domain
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    app = try container.decode(App.self, forKey: .app)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configuration = try container.decode(ApplicationInventory.self, forKey: .configuration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    domain = try container.decode(AppDomain.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            
            
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
        }
        
    }
}


