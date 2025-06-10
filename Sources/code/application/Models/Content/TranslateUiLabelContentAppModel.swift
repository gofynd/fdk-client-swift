

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: TranslateUiLabel
        Used By: Content
    */
    class TranslateUiLabel: Codable {
        
        public var id: String?
        
        public var companyId: String?
        
        public var applicationId: String?
        
        public var templateThemeId: String?
        
        public var themeId: String?
        
        public var locale: String?
        
        public var resource: [String: Any]?
        
        public var type: String?
        
        public var template: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case templateThemeId = "template_theme_id"
            
            case themeId = "theme_id"
            
            case locale = "locale"
            
            case resource = "resource"
            
            case type = "type"
            
            case template = "template"
            
        }

        public init(applicationId: String? = nil, companyId: String? = nil, locale: String? = nil, resource: [String: Any]? = nil, template: Bool? = nil, templateThemeId: String? = nil, themeId: String? = nil, type: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.templateThemeId = templateThemeId
            
            self.themeId = themeId
            
            self.locale = locale
            
            self.resource = resource
            
            self.type = type
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                companyId = try container.decode(String.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
            
            
            
            do {
                template = try container.decode(Bool.self, forKey: .template)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            try? container.encodeIfPresent(templateThemeId, forKey: .templateThemeId)
            
            
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}
