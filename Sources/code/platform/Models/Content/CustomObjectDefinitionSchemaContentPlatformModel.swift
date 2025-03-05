

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectDefinitionSchema
        Used By: Content
    */

    class CustomObjectDefinitionSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var type: String?
        
        public var displayNameKey: String?
        
        public var description: String?
        
        public var creator: String?
        
        public var createdBy: String?
        
        public var updatedBy: String?
        
        public var fieldDefinitions: [CustomObjectCustomFieldDefinitionResSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case type = "type"
            
            case displayNameKey = "display_name_key"
            
            case description = "description"
            
            case creator = "creator"
            
            case createdBy = "created_by"
            
            case updatedBy = "updated_by"
            
            case fieldDefinitions = "field_definitions"
            
        }

        public init(createdBy: String? = nil, creator: String? = nil, description: String? = nil, displayNameKey: String? = nil, fieldDefinitions: [CustomObjectCustomFieldDefinitionResSchema]? = nil, name: String? = nil, type: String? = nil, updatedBy: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.type = type
            
            self.displayNameKey = displayNameKey
            
            self.description = description
            
            self.creator = creator
            
            self.createdBy = createdBy
            
            self.updatedBy = updatedBy
            
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
                    creator = try container.decode(String.self, forKey: .creator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldDefinitions = try container.decode([CustomObjectCustomFieldDefinitionResSchema].self, forKey: .fieldDefinitions)
                
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
            
            
            
            
            try? container.encodeIfPresent(displayNameKey, forKey: .displayNameKey)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(fieldDefinitions, forKey: .fieldDefinitions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectDefinitionSchema
        Used By: Content
    */

    class CustomObjectDefinitionSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var type: String?
        
        public var displayNameKey: String?
        
        public var description: String?
        
        public var creator: String?
        
        public var createdBy: String?
        
        public var updatedBy: String?
        
        public var fieldDefinitions: [CustomObjectCustomFieldDefinitionResSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case type = "type"
            
            case displayNameKey = "display_name_key"
            
            case description = "description"
            
            case creator = "creator"
            
            case createdBy = "created_by"
            
            case updatedBy = "updated_by"
            
            case fieldDefinitions = "field_definitions"
            
        }

        public init(createdBy: String? = nil, creator: String? = nil, description: String? = nil, displayNameKey: String? = nil, fieldDefinitions: [CustomObjectCustomFieldDefinitionResSchema]? = nil, name: String? = nil, type: String? = nil, updatedBy: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.type = type
            
            self.displayNameKey = displayNameKey
            
            self.description = description
            
            self.creator = creator
            
            self.createdBy = createdBy
            
            self.updatedBy = updatedBy
            
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
                    creator = try container.decode(String.self, forKey: .creator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldDefinitions = try container.decode([CustomObjectCustomFieldDefinitionResSchema].self, forKey: .fieldDefinitions)
                
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
            
            
            
            
            try? container.encodeIfPresent(displayNameKey, forKey: .displayNameKey)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(fieldDefinitions, forKey: .fieldDefinitions)
            
            
        }
        
    }
}


