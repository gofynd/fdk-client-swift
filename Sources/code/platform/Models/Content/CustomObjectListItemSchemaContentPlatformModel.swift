

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectListItemSchema
        Used By: Content
    */

    class CustomObjectListItemSchema: Codable {
        
        
        public var id: String?
        
        public var status: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var displayName: String?
        
        public var definition: CustomObjectListItemDefinitionModel?
        
        public var references: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case status = "status"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case displayName = "display_name"
            
            case definition = "definition"
            
            case references = "references"
            
        }

        public init(createdAt: String? = nil, definition: CustomObjectListItemDefinitionModel? = nil, displayName: String? = nil, id: String? = nil, references: Int? = nil, status: String? = nil, updatedAt: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.createdAt = createdAt
            
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
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
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
                    definition = try container.decode(CustomObjectListItemDefinitionModel.self, forKey: .definition)
                
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
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
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
        
        public var status: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var displayName: String?
        
        public var definition: CustomObjectListItemDefinitionModel?
        
        public var references: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case status = "status"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case displayName = "display_name"
            
            case definition = "definition"
            
            case references = "references"
            
        }

        public init(createdAt: String? = nil, definition: CustomObjectListItemDefinitionModel? = nil, displayName: String? = nil, id: String? = nil, references: Int? = nil, status: String? = nil, updatedAt: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.createdAt = createdAt
            
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
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
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
                    definition = try container.decode(CustomObjectListItemDefinitionModel.self, forKey: .definition)
                
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
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definition, forKey: .definition)
            
            
            
            
            try? container.encodeIfPresent(references, forKey: .references)
            
            
        }
        
    }
}


