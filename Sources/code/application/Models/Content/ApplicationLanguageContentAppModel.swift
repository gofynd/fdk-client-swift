

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: ApplicationLanguage
        Used By: Content
    */
    class ApplicationLanguage: Codable {
        
        public var id: String?
        
        public var companyId: String
        
        public var applicationId: String
        
        public var locale: String
        
        public var name: String
        
        public var displayName: String?
        
        public var direction: String
        
        public var isDefault: Bool
        
        public var published: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case locale = "locale"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case direction = "direction"
            
            case isDefault = "is_default"
            
            case published = "published"
            
        }

        public init(applicationId: String, companyId: String, direction: String, displayName: String? = nil, isDefault: Bool, locale: String, name: String, published: Bool, id: String? = nil) {
            
            self.id = id
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.locale = locale
            
            self.name = name
            
            self.displayName = displayName
            
            self.direction = direction
            
            self.isDefault = isDefault
            
            self.published = published
            
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
            
            
            
            companyId = try container.decode(String.self, forKey: .companyId)
            
            
            
            
            applicationId = try container.decode(String.self, forKey: .applicationId)
            
            
            
            
            locale = try container.decode(String.self, forKey: .locale)
            
            
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            do {
                displayName = try container.decode(String.self, forKey: .displayName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            direction = try container.decode(String.self, forKey: .direction)
            
            
            
            
            isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            
            
            
            published = try container.decode(Bool.self, forKey: .published)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(direction, forKey: .direction)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
        }
        
    }
}
