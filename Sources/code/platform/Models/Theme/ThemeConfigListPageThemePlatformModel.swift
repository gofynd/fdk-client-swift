

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ThemeConfigListPage
        Used By: Theme
    */

    class ThemeConfigListPage: Codable {
        
        
        public var page: String?
        
        public var settings: ThemeConfigListPageSettingsProps?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case settings = "settings"
            
        }

        public init(page: String? = nil, settings: ThemeConfigListPageSettingsProps? = nil) {
            
            self.page = page
            
            self.settings = settings
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(String.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    settings = try container.decode(ThemeConfigListPageSettingsProps.self, forKey: .settings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(settings, forKey: .settings)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ThemeConfigListPage
        Used By: Theme
    */

    class ThemeConfigListPage: Codable {
        
        
        public var page: String?
        
        public var settings: ThemeConfigListPageSettingsProps?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case settings = "settings"
            
        }

        public init(page: String? = nil, settings: ThemeConfigListPageSettingsProps? = nil) {
            
            self.page = page
            
            self.settings = settings
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(String.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    settings = try container.decode(ThemeConfigListPageSettingsProps.self, forKey: .settings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(settings, forKey: .settings)
            
            
        }
        
    }
}


