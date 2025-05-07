

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: ThemeStoreInStoreConfig
        Used By: Configuration
    */

    class ThemeStoreInStoreConfig: Codable {
        
        
        public var themeName: String?
        
        public var themeId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case themeName = "theme_name"
            
            case themeId = "theme_id"
            
        }

        public init(themeId: String? = nil, themeName: String? = nil) {
            
            self.themeName = themeName
            
            self.themeId = themeId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    themeName = try container.decode(String.self, forKey: .themeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    themeId = try container.decode(String.self, forKey: .themeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(themeName, forKey: .themeName)
            
            
            
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: ThemeStoreInStoreConfig
        Used By: Configuration
    */

    class ThemeStoreInStoreConfig: Codable {
        
        
        public var themeName: String?
        
        public var themeId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case themeName = "theme_name"
            
            case themeId = "theme_id"
            
        }

        public init(themeId: String? = nil, themeName: String? = nil) {
            
            self.themeName = themeName
            
            self.themeId = themeId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    themeName = try container.decode(String.self, forKey: .themeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    themeId = try container.decode(String.self, forKey: .themeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(themeName, forKey: .themeName)
            
            
            
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
            
        }
        
    }
}


