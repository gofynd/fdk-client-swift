

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ConfigurationListingFilterConfig
        Used By: Catalog
    */

    class ConfigurationListingFilterConfig: Codable {
        
        
        public var displayName: String?
        
        public var isActive: Bool
        
        public var key: String
        
        public var logo: String?
        
        public var name: String?
        
        public var priority: Int
        
        public var type: String
        
        public var valueConfig: ConfigurationListingFilterValue?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case isActive = "is_active"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case priority = "priority"
            
            case type = "type"
            
            case valueConfig = "value_config"
            
        }

        public init(displayName: String? = nil, isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue? = nil) {
            
            self.displayName = displayName
            
            self.isActive = isActive
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.priority = priority
            
            self.type = type
            
            self.valueConfig = valueConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    valueConfig = try container.decode(ConfigurationListingFilterValue.self, forKey: .valueConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ConfigurationListingFilterConfig
        Used By: Catalog
    */

    class ConfigurationListingFilterConfig: Codable {
        
        
        public var displayName: String?
        
        public var isActive: Bool
        
        public var key: String
        
        public var logo: String?
        
        public var name: String?
        
        public var priority: Int
        
        public var type: String
        
        public var valueConfig: ConfigurationListingFilterValue?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case isActive = "is_active"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case priority = "priority"
            
            case type = "type"
            
            case valueConfig = "value_config"
            
        }

        public init(displayName: String? = nil, isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue? = nil) {
            
            self.displayName = displayName
            
            self.isActive = isActive
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.priority = priority
            
            self.type = type
            
            self.valueConfig = valueConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    valueConfig = try container.decode(ConfigurationListingFilterValue.self, forKey: .valueConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)
            
            
        }
        
    }
}


