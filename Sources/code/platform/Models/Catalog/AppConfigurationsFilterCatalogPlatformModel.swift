

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppConfigurationsFilter
        Used By: Catalog
    */

    class AppConfigurationsFilter: Codable {
        
        
        public var appId: String
        
        public var allowSingle: Bool?
        
        public var attributeName: String?
        
        public var valueConfig: ValueConfigType?
        
        public var type: String?
        
        public var isActive: Bool
        
        public var isDefault: Bool
        
        public var key: String
        
        public var logo: String?
        
        public var name: String?
        
        public var priority: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case allowSingle = "allow_single"
            
            case attributeName = "attribute_name"
            
            case valueConfig = "value_config"
            
            case type = "type"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case priority = "priority"
            
        }

        public init(allowSingle: Bool? = nil, appId: String, attributeName: String? = nil, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String? = nil, valueConfig: ValueConfigType? = nil) {
            
            self.appId = appId
            
            self.allowSingle = allowSingle
            
            self.attributeName = attributeName
            
            self.valueConfig = valueConfig
            
            self.type = type
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                do {
                    allowSingle = try container.decode(Bool.self, forKey: .allowSingle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributeName = try container.decode(String.self, forKey: .attributeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueConfig = try container.decode(ValueConfigType.self, forKey: .valueConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
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
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(allowSingle, forKey: .allowSingle)
            
            
            
            
            try? container.encodeIfPresent(attributeName, forKey: .attributeName)
            
            
            
            
            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppConfigurationsFilter
        Used By: Catalog
    */

    class AppConfigurationsFilter: Codable {
        
        
        public var appId: String
        
        public var allowSingle: Bool?
        
        public var attributeName: String?
        
        public var valueConfig: ValueConfigType?
        
        public var type: String?
        
        public var isActive: Bool
        
        public var isDefault: Bool
        
        public var key: String
        
        public var logo: String?
        
        public var name: String?
        
        public var priority: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case allowSingle = "allow_single"
            
            case attributeName = "attribute_name"
            
            case valueConfig = "value_config"
            
            case type = "type"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case priority = "priority"
            
        }

        public init(allowSingle: Bool? = nil, appId: String, attributeName: String? = nil, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String? = nil, valueConfig: ValueConfigType? = nil) {
            
            self.appId = appId
            
            self.allowSingle = allowSingle
            
            self.attributeName = attributeName
            
            self.valueConfig = valueConfig
            
            self.type = type
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                do {
                    allowSingle = try container.decode(Bool.self, forKey: .allowSingle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributeName = try container.decode(String.self, forKey: .attributeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueConfig = try container.decode(ValueConfigType.self, forKey: .valueConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
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
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(allowSingle, forKey: .allowSingle)
            
            
            
            
            try? container.encodeIfPresent(attributeName, forKey: .attributeName)
            
            
            
            
            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}

