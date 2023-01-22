

import Foundation
public extension PlatformClient {
    /*
        Model: AppConfigurationsSort
        Used By: Catalog
    */

    class AppConfigurationsSort: Codable {
        
        
        public var priority: Int
        
        public var key: String
        
        public var appId: String
        
        public var isDefault: Bool
        
        public var logo: String?
        
        public var name: String?
        
        public var isActive: Bool
        
        public var defaultKey: String
        

        public enum CodingKeys: String, CodingKey {
            
            case priority = "priority"
            
            case key = "key"
            
            case appId = "app_id"
            
            case isDefault = "is_default"
            
            case logo = "logo"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case defaultKey = "default_key"
            
        }

        public init(appId: String, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            
            self.priority = priority
            
            self.key = key
            
            self.appId = appId
            
            self.isDefault = isDefault
            
            self.logo = logo
            
            self.name = name
            
            self.isActive = isActive
            
            self.defaultKey = defaultKey
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
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
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                defaultKey = try container.decode(String.self, forKey: .defaultKey)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
            
            
        }
        
    }
}
