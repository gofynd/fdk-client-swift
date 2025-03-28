

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectDefinitionSlugSchema
        Used By: Content
    */

    class CustomObjectDefinitionSlugSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var type: String?
        
        public var slug: String?
        
        public var displayNameKey: String?
        
        public var description: String?
        
        public var fieldDefinitions: [CustomFieldDefinitionDetailResSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case type = "type"
            
            case slug = "slug"
            
            case displayNameKey = "display_name_key"
            
            case description = "description"
            
            case fieldDefinitions = "field_definitions"
            
        }

        public init(description: String? = nil, displayNameKey: String? = nil, fieldDefinitions: [CustomFieldDefinitionDetailResSchema]? = nil, id: String? = nil, name: String? = nil, slug: String? = nil, type: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.type = type
            
            self.slug = slug
            
            self.displayNameKey = displayNameKey
            
            self.description = description
            
            self.fieldDefinitions = fieldDefinitions
            
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayNameKey = try container.decode(String.self, forKey: .displayNameKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldDefinitions = try container.decode([CustomFieldDefinitionDetailResSchema].self, forKey: .fieldDefinitions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(displayNameKey, forKey: .displayNameKey)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(fieldDefinitions, forKey: .fieldDefinitions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectDefinitionSlugSchema
        Used By: Content
    */

    class CustomObjectDefinitionSlugSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var type: String?
        
        public var slug: String?
        
        public var displayNameKey: String?
        
        public var description: String?
        
        public var fieldDefinitions: [CustomFieldDefinitionDetailResSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case type = "type"
            
            case slug = "slug"
            
            case displayNameKey = "display_name_key"
            
            case description = "description"
            
            case fieldDefinitions = "field_definitions"
            
        }

        public init(description: String? = nil, displayNameKey: String? = nil, fieldDefinitions: [CustomFieldDefinitionDetailResSchema]? = nil, id: String? = nil, name: String? = nil, slug: String? = nil, type: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.type = type
            
            self.slug = slug
            
            self.displayNameKey = displayNameKey
            
            self.description = description
            
            self.fieldDefinitions = fieldDefinitions
            
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayNameKey = try container.decode(String.self, forKey: .displayNameKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldDefinitions = try container.decode([CustomFieldDefinitionDetailResSchema].self, forKey: .fieldDefinitions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(displayNameKey, forKey: .displayNameKey)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(fieldDefinitions, forKey: .fieldDefinitions)
            
            
        }
        
    }
}


