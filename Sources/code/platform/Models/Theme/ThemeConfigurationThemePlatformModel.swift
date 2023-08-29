

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ThemeConfiguration
        Used By: Theme
    */

    class ThemeConfiguration: Codable {
        
        
        public var name: String?
        
        public var globalConfig: [String: Any]?
        
        public var custom: CustomConfig?
        
        public var page: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case globalConfig = "global_config"
            
            case custom = "custom"
            
            case page = "page"
            
        }

        public init(custom: CustomConfig? = nil, globalConfig: [String: Any]? = nil, name: String? = nil, page: [String]? = nil) {
            
            self.name = name
            
            self.globalConfig = globalConfig
            
            self.custom = custom
            
            self.page = page
            
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
                    globalConfig = try container.decode([String: Any].self, forKey: .globalConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    custom = try container.decode(CustomConfig.self, forKey: .custom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode([String].self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(globalConfig, forKey: .globalConfig)
            
            
            
            
            try? container.encodeIfPresent(custom, forKey: .custom)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ThemeConfiguration
        Used By: Theme
    */

    class ThemeConfiguration: Codable {
        
        
        public var name: String?
        
        public var globalConfig: [String: Any]?
        
        public var custom: CustomConfig?
        
        public var page: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case globalConfig = "global_config"
            
            case custom = "custom"
            
            case page = "page"
            
        }

        public init(custom: CustomConfig? = nil, globalConfig: [String: Any]? = nil, name: String? = nil, page: [String]? = nil) {
            
            self.name = name
            
            self.globalConfig = globalConfig
            
            self.custom = custom
            
            self.page = page
            
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
                    globalConfig = try container.decode([String: Any].self, forKey: .globalConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    custom = try container.decode(CustomConfig.self, forKey: .custom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode([String].self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(globalConfig, forKey: .globalConfig)
            
            
            
            
            try? container.encodeIfPresent(custom, forKey: .custom)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


