

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ConfigurationProductConfig
        Used By: Catalog
    */

    class ConfigurationProductConfig: Codable {
        
        
        public var isActive: Bool
        
        public var key: String
        
        public var logo: String?
        
        public var priority: Int
        
        public var size: ProductSize?
        
        public var subtitle: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case key = "key"
            
            case logo = "logo"
            
            case priority = "priority"
            
            case size = "size"
            
            case subtitle = "subtitle"
            
            case title = "title"
            
        }

        public init(isActive: Bool, key: String, logo: String? = nil, priority: Int, size: ProductSize? = nil, subtitle: String? = nil, title: String? = nil) {
            
            self.isActive = isActive
            
            self.key = key
            
            self.logo = logo
            
            self.priority = priority
            
            self.size = size
            
            self.subtitle = subtitle
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                do {
                    size = try container.decode(ProductSize.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ConfigurationProductConfig
        Used By: Catalog
    */

    class ConfigurationProductConfig: Codable {
        
        
        public var isActive: Bool
        
        public var key: String
        
        public var logo: String?
        
        public var priority: Int
        
        public var size: ProductSize?
        
        public var subtitle: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case key = "key"
            
            case logo = "logo"
            
            case priority = "priority"
            
            case size = "size"
            
            case subtitle = "subtitle"
            
            case title = "title"
            
        }

        public init(isActive: Bool, key: String, logo: String? = nil, priority: Int, size: ProductSize? = nil, subtitle: String? = nil, title: String? = nil) {
            
            self.isActive = isActive
            
            self.key = key
            
            self.logo = logo
            
            self.priority = priority
            
            self.size = size
            
            self.subtitle = subtitle
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                do {
                    size = try container.decode(ProductSize.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}


