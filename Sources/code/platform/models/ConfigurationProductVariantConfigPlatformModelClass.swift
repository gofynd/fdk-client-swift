

import Foundation
public extension PlatformClient {
    /*
        Model: ConfigurationProductVariantConfig
        Used By: Catalog
    */

    class ConfigurationProductVariantConfig: Codable {
        
        
        public var size: ProductSize
        
        public var priority: Int
        
        public var key: String
        
        public var logo: String?
        
        public var name: String
        
        public var isActive: Bool
        
        public var displayType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case priority = "priority"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case displayType = "display_type"
            
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            
            self.size = size
            
            self.priority = priority
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.isActive = isActive
            
            self.displayType = displayType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(ProductSize.self, forKey: .size)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                displayType = try container.decode(String.self, forKey: .displayType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            
        }
        
    }
}
