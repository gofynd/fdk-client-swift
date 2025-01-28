

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectRequestSchema
        Used By: Content
    */

    class CustomObjectRequestSchema: Codable {
        
        
        public var status: String?
        
        public var slug: String?
        
        public var definitionId: String?
        
        public var fields: [CustomObjectEntryFieldSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case slug = "slug"
            
            case definitionId = "definition_id"
            
            case fields = "fields"
            
        }

        public init(definitionId: String? = nil, fields: [CustomObjectEntryFieldSchema]? = nil, slug: String? = nil, status: String? = nil) {
            
            self.status = status
            
            self.slug = slug
            
            self.definitionId = definitionId
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    definitionId = try container.decode(String.self, forKey: .definitionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomObjectEntryFieldSchema].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectRequestSchema
        Used By: Content
    */

    class CustomObjectRequestSchema: Codable {
        
        
        public var status: String?
        
        public var slug: String?
        
        public var definitionId: String?
        
        public var fields: [CustomObjectEntryFieldSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case slug = "slug"
            
            case definitionId = "definition_id"
            
            case fields = "fields"
            
        }

        public init(definitionId: String? = nil, fields: [CustomObjectEntryFieldSchema]? = nil, slug: String? = nil, status: String? = nil) {
            
            self.status = status
            
            self.slug = slug
            
            self.definitionId = definitionId
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    definitionId = try container.decode(String.self, forKey: .definitionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomObjectEntryFieldSchema].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}


