

import Foundation


public extension PlatformClient.Content {
    /*
        Model: TranslateUiLabelsCreate
        Used By: Content
    */

    class TranslateUiLabelsCreate: Codable {
        
        
        public var templateThemeId: String?
        
        public var themeId: String?
        
        public var locale: String?
        
        public var resource: [String: Any]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateThemeId = "template_theme_id"
            
            case themeId = "theme_id"
            
            case locale = "locale"
            
            case resource = "resource"
            
            case type = "type"
            
        }

        public init(locale: String? = nil, resource: [String: Any]? = nil, templateThemeId: String? = nil, themeId: String? = nil, type: String? = nil) {
            
            self.templateThemeId = templateThemeId
            
            self.themeId = themeId
            
            self.locale = locale
            
            self.resource = resource
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    templateThemeId = try container.decode(String.self, forKey: .templateThemeId)
                
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
                
            
            
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resource = try container.decode([String: Any].self, forKey: .resource)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateThemeId, forKey: .templateThemeId)
            
            
            
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: TranslateUiLabelsCreate
        Used By: Content
    */

    class TranslateUiLabelsCreate: Codable {
        
        
        public var templateThemeId: String?
        
        public var themeId: String?
        
        public var locale: String?
        
        public var resource: [String: Any]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateThemeId = "template_theme_id"
            
            case themeId = "theme_id"
            
            case locale = "locale"
            
            case resource = "resource"
            
            case type = "type"
            
        }

        public init(locale: String? = nil, resource: [String: Any]? = nil, templateThemeId: String? = nil, themeId: String? = nil, type: String? = nil) {
            
            self.templateThemeId = templateThemeId
            
            self.themeId = themeId
            
            self.locale = locale
            
            self.resource = resource
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    templateThemeId = try container.decode(String.self, forKey: .templateThemeId)
                
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
                
            
            
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resource = try container.decode([String: Any].self, forKey: .resource)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateThemeId, forKey: .templateThemeId)
            
            
            
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


