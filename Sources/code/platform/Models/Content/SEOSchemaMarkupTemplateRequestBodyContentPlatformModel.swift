

import Foundation


public extension PlatformClient.Content {
    /*
        Model: SEOSchemaMarkupTemplateRequestBody
        Used By: Content
    */

    class SEOSchemaMarkupTemplateRequestBody: Codable {
        
        
        public var title: String?
        
        public var pageType: String?
        
        public var schema: String?
        
        public var description: String?
        
        public var targetJson: [String: Any]?
        
        public var active: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case pageType = "page_type"
            
            case schema = "schema"
            
            case description = "description"
            
            case targetJson = "target_json"
            
            case active = "active"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(active: Bool? = nil, createdAt: String? = nil, description: String? = nil, pageType: String? = nil, schema: String? = nil, targetJson: [String: Any]? = nil, title: String? = nil, updatedAt: String? = nil) {
            
            self.title = title
            
            self.pageType = pageType
            
            self.schema = schema
            
            self.description = description
            
            self.targetJson = targetJson
            
            self.active = active
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageType = try container.decode(String.self, forKey: .pageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schema = try container.decode(String.self, forKey: .schema)
                
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
                    targetJson = try container.decode([String: Any].self, forKey: .targetJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(pageType, forKey: .pageType)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(targetJson, forKey: .targetJson)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: SEOSchemaMarkupTemplateRequestBody
        Used By: Content
    */

    class SEOSchemaMarkupTemplateRequestBody: Codable {
        
        
        public var title: String?
        
        public var pageType: String?
        
        public var schema: String?
        
        public var description: String?
        
        public var targetJson: [String: Any]?
        
        public var active: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case pageType = "page_type"
            
            case schema = "schema"
            
            case description = "description"
            
            case targetJson = "target_json"
            
            case active = "active"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(active: Bool? = nil, createdAt: String? = nil, description: String? = nil, pageType: String? = nil, schema: String? = nil, targetJson: [String: Any]? = nil, title: String? = nil, updatedAt: String? = nil) {
            
            self.title = title
            
            self.pageType = pageType
            
            self.schema = schema
            
            self.description = description
            
            self.targetJson = targetJson
            
            self.active = active
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageType = try container.decode(String.self, forKey: .pageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schema = try container.decode(String.self, forKey: .schema)
                
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
                    targetJson = try container.decode([String: Any].self, forKey: .targetJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(pageType, forKey: .pageType)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(targetJson, forKey: .targetJson)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


