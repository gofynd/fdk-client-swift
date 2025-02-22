

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectBySlugSchema
        Used By: Content
    */

    class CustomObjectBySlugSchema: Codable {
        
        
        public var id: String?
        
        public var status: String?
        
        public var displayName: String?
        
        public var definition: CustomObjectListItemDefinitionModel?
        
        public var references: [[String: Any]]?
        
        public var slug: String?
        
        public var definitionSlug: String?
        
        public var fields: [CustomObjectFieldDefinition]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case status = "status"
            
            case displayName = "display_name"
            
            case definition = "definition"
            
            case references = "references"
            
            case slug = "slug"
            
            case definitionSlug = "definition_slug"
            
            case fields = "fields"
            
        }

        public init(definition: CustomObjectListItemDefinitionModel? = nil, definitionSlug: String? = nil, displayName: String? = nil, fields: [CustomObjectFieldDefinition]? = nil, id: String? = nil, references: [[String: Any]]? = nil, slug: String? = nil, status: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.displayName = displayName
            
            self.definition = definition
            
            self.references = references
            
            self.slug = slug
            
            self.definitionSlug = definitionSlug
            
            self.fields = fields
            
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
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definition = try container.decode(CustomObjectListItemDefinitionModel.self, forKey: .definition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    references = try container.decode([[String: Any]].self, forKey: .references)
                
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
                    definitionSlug = try container.decode(String.self, forKey: .definitionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomObjectFieldDefinition].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definition, forKey: .definition)
            
            
            
            
            try? container.encodeIfPresent(references, forKey: .references)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(definitionSlug, forKey: .definitionSlug)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectBySlugSchema
        Used By: Content
    */

    class CustomObjectBySlugSchema: Codable {
        
        
        public var id: String?
        
        public var status: String?
        
        public var displayName: String?
        
        public var definition: CustomObjectListItemDefinitionModel?
        
        public var references: [[String: Any]]?
        
        public var slug: String?
        
        public var definitionSlug: String?
        
        public var fields: [CustomObjectFieldDefinition]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case status = "status"
            
            case displayName = "display_name"
            
            case definition = "definition"
            
            case references = "references"
            
            case slug = "slug"
            
            case definitionSlug = "definition_slug"
            
            case fields = "fields"
            
        }

        public init(definition: CustomObjectListItemDefinitionModel? = nil, definitionSlug: String? = nil, displayName: String? = nil, fields: [CustomObjectFieldDefinition]? = nil, id: String? = nil, references: [[String: Any]]? = nil, slug: String? = nil, status: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.displayName = displayName
            
            self.definition = definition
            
            self.references = references
            
            self.slug = slug
            
            self.definitionSlug = definitionSlug
            
            self.fields = fields
            
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
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definition = try container.decode(CustomObjectListItemDefinitionModel.self, forKey: .definition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    references = try container.decode([[String: Any]].self, forKey: .references)
                
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
                    definitionSlug = try container.decode(String.self, forKey: .definitionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomObjectFieldDefinition].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definition, forKey: .definition)
            
            
            
            
            try? container.encodeIfPresent(references, forKey: .references)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(definitionSlug, forKey: .definitionSlug)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}


