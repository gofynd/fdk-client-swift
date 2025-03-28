

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectListItemSchema
        Used By: Content
    */

    class CustomObjectListItemSchema: Codable {
        
        
        public var id: String?
        
        public var definitionId: String?
        
        public var type: String?
        
        public var status: String?
        
        public var slug: String?
        
        public var updatedAt: String?
        
        public var displayName: String?
        
        public var definition: CustomObjectListItemDefinationSchema?
        
        public var references: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case definitionId = "definition_id"
            
            case type = "type"
            
            case status = "status"
            
            case slug = "slug"
            
            case updatedAt = "updated_at"
            
            case displayName = "display_name"
            
            case definition = "definition"
            
            case references = "references"
            
        }

        public init(definition: CustomObjectListItemDefinationSchema? = nil, definitionId: String? = nil, displayName: String? = nil, references: Int? = nil, slug: String? = nil, status: String? = nil, type: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.definitionId = definitionId
            
            self.type = type
            
            self.status = status
            
            self.slug = slug
            
            self.updatedAt = updatedAt
            
            self.displayName = displayName
            
            self.definition = definition
            
            self.references = references
            
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
                    definitionId = try container.decode(String.self, forKey: .definitionId)
                
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
                    status = try container.decode(String.self, forKey: .status)
                
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
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
                    definition = try container.decode(CustomObjectListItemDefinationSchema.self, forKey: .definition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    references = try container.decode(Int.self, forKey: .references)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definition, forKey: .definition)
            
            
            
            
            try? container.encodeIfPresent(references, forKey: .references)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectListItemSchema
        Used By: Content
    */

    class CustomObjectListItemSchema: Codable {
        
        
        public var id: String?
        
        public var definitionId: String?
        
        public var type: String?
        
        public var status: String?
        
        public var slug: String?
        
        public var updatedAt: String?
        
        public var displayName: String?
        
        public var definition: CustomObjectListItemDefinationSchema?
        
        public var references: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case definitionId = "definition_id"
            
            case type = "type"
            
            case status = "status"
            
            case slug = "slug"
            
            case updatedAt = "updated_at"
            
            case displayName = "display_name"
            
            case definition = "definition"
            
            case references = "references"
            
        }

        public init(definition: CustomObjectListItemDefinationSchema? = nil, definitionId: String? = nil, displayName: String? = nil, references: Int? = nil, slug: String? = nil, status: String? = nil, type: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.definitionId = definitionId
            
            self.type = type
            
            self.status = status
            
            self.slug = slug
            
            self.updatedAt = updatedAt
            
            self.displayName = displayName
            
            self.definition = definition
            
            self.references = references
            
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
                    definitionId = try container.decode(String.self, forKey: .definitionId)
                
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
                    status = try container.decode(String.self, forKey: .status)
                
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
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
                    definition = try container.decode(CustomObjectListItemDefinationSchema.self, forKey: .definition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    references = try container.decode(Int.self, forKey: .references)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definition, forKey: .definition)
            
            
            
            
            try? container.encodeIfPresent(references, forKey: .references)
            
            
        }
        
    }
}


