

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectByIdSchema
        Used By: Content
    */

    class CustomObjectByIdSchema: Codable {
        
        
        public var id: String?
        
        public var status: String?
        
        public var slug: String?
        
        public var displayName: String?
        
        public var definition: CustomObjectListItemDefinationSchema?
        
        public var references: [[String: Any]]?
        
        public var fields: [CustomObjectFieldSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case status = "status"
            
            case slug = "slug"
            
            case displayName = "display_name"
            
            case definition = "definition"
            
            case references = "references"
            
            case fields = "fields"
            
        }

        public init(definition: CustomObjectListItemDefinationSchema? = nil, displayName: String? = nil, fields: [CustomObjectFieldSchema]? = nil, references: [[String: Any]]? = nil, slug: String? = nil, status: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.slug = slug
            
            self.displayName = displayName
            
            self.definition = definition
            
            self.references = references
            
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                    references = try container.decode([[String: Any]].self, forKey: .references)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomObjectFieldSchema].self, forKey: .fields)
                
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
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definition, forKey: .definition)
            
            
            
            
            try? container.encodeIfPresent(references, forKey: .references)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectByIdSchema
        Used By: Content
    */

    class CustomObjectByIdSchema: Codable {
        
        
        public var id: String?
        
        public var status: String?
        
        public var slug: String?
        
        public var displayName: String?
        
        public var definition: CustomObjectListItemDefinationSchema?
        
        public var references: [[String: Any]]?
        
        public var fields: [CustomObjectFieldSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case status = "status"
            
            case slug = "slug"
            
            case displayName = "display_name"
            
            case definition = "definition"
            
            case references = "references"
            
            case fields = "fields"
            
        }

        public init(definition: CustomObjectListItemDefinationSchema? = nil, displayName: String? = nil, fields: [CustomObjectFieldSchema]? = nil, references: [[String: Any]]? = nil, slug: String? = nil, status: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.slug = slug
            
            self.displayName = displayName
            
            self.definition = definition
            
            self.references = references
            
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                    references = try container.decode([[String: Any]].self, forKey: .references)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomObjectFieldSchema].self, forKey: .fields)
                
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
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definition, forKey: .definition)
            
            
            
            
            try? container.encodeIfPresent(references, forKey: .references)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}


