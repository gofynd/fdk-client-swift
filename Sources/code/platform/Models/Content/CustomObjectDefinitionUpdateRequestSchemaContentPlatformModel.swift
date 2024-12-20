

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectDefinitionUpdateRequestSchema
        Used By: Content
    */

    class CustomObjectDefinitionUpdateRequestSchema: Codable {
        
        
        public var description: String?
        
        public var name: String?
        
        public var displayNameKey: String?
        
        public var fieldDefinitions: [CustomObjectCustomFieldDefinitions]?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case displayNameKey = "display_name_key"
            
            case fieldDefinitions = "field_definitions"
            
        }

        public init(description: String? = nil, displayNameKey: String? = nil, fieldDefinitions: [CustomObjectCustomFieldDefinitions]? = nil, name: String? = nil) {
            
            self.description = description
            
            self.name = name
            
            self.displayNameKey = displayNameKey
            
            self.fieldDefinitions = fieldDefinitions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                    displayNameKey = try container.decode(String.self, forKey: .displayNameKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldDefinitions = try container.decode([CustomObjectCustomFieldDefinitions].self, forKey: .fieldDefinitions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayNameKey, forKey: .displayNameKey)
            
            
            
            
            try? container.encodeIfPresent(fieldDefinitions, forKey: .fieldDefinitions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectDefinitionUpdateRequestSchema
        Used By: Content
    */

    class CustomObjectDefinitionUpdateRequestSchema: Codable {
        
        
        public var description: String?
        
        public var name: String?
        
        public var displayNameKey: String?
        
        public var fieldDefinitions: [CustomObjectCustomFieldDefinitions]?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case displayNameKey = "display_name_key"
            
            case fieldDefinitions = "field_definitions"
            
        }

        public init(description: String? = nil, displayNameKey: String? = nil, fieldDefinitions: [CustomObjectCustomFieldDefinitions]? = nil, name: String? = nil) {
            
            self.description = description
            
            self.name = name
            
            self.displayNameKey = displayNameKey
            
            self.fieldDefinitions = fieldDefinitions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                    displayNameKey = try container.decode(String.self, forKey: .displayNameKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldDefinitions = try container.decode([CustomObjectCustomFieldDefinitions].self, forKey: .fieldDefinitions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayNameKey, forKey: .displayNameKey)
            
            
            
            
            try? container.encodeIfPresent(fieldDefinitions, forKey: .fieldDefinitions)
            
            
        }
        
    }
}


