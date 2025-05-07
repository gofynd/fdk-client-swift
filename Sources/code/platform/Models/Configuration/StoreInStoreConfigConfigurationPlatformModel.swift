

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: StoreInStoreConfig
        Used By: Configuration
    */

    class StoreInStoreConfig: Codable {
        
        
        public var name: String?
        
        public var domain: DomainStoreInStoreConfig?
        
        public var theme: ThemeStoreInStoreConfig?
        
        public var appId: String?
        
        public var isArchive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case domain = "domain"
            
            case theme = "theme"
            
            case appId = "app_id"
            
            case isArchive = "is_archive"
            
        }

        public init(appId: String? = nil, domain: DomainStoreInStoreConfig? = nil, isArchive: Bool? = nil, name: String? = nil, theme: ThemeStoreInStoreConfig? = nil) {
            
            self.name = name
            
            self.domain = domain
            
            self.theme = theme
            
            self.appId = appId
            
            self.isArchive = isArchive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    domain = try container.decode(DomainStoreInStoreConfig.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    theme = try container.decode(ThemeStoreInStoreConfig.self, forKey: .theme)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchive = try container.decode(Bool.self, forKey: .isArchive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            
            try? container.encodeIfPresent(theme, forKey: .theme)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(isArchive, forKey: .isArchive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: StoreInStoreConfig
        Used By: Configuration
    */

    class StoreInStoreConfig: Codable {
        
        
        public var name: String?
        
        public var domain: DomainStoreInStoreConfig?
        
        public var theme: ThemeStoreInStoreConfig?
        
        public var appId: String?
        
        public var isArchive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case domain = "domain"
            
            case theme = "theme"
            
            case appId = "app_id"
            
            case isArchive = "is_archive"
            
        }

        public init(appId: String? = nil, domain: DomainStoreInStoreConfig? = nil, isArchive: Bool? = nil, name: String? = nil, theme: ThemeStoreInStoreConfig? = nil) {
            
            self.name = name
            
            self.domain = domain
            
            self.theme = theme
            
            self.appId = appId
            
            self.isArchive = isArchive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    domain = try container.decode(DomainStoreInStoreConfig.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    theme = try container.decode(ThemeStoreInStoreConfig.self, forKey: .theme)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchive = try container.decode(Bool.self, forKey: .isArchive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            
            try? container.encodeIfPresent(theme, forKey: .theme)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(isArchive, forKey: .isArchive)
            
            
        }
        
    }
}


