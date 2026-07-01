

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourceJsonSchema
        Used By: Content
    */

    class ResourceJsonSchema: Codable {
        
        
        public var schema: String?
        
        public var type: ResourceJsonSchemaType?
        

        public enum CodingKeys: String, CodingKey {
            
            case schema = "schema"
            
            case type = "type"
            
        }

        public init(schema: String? = nil, type: ResourceJsonSchemaType? = nil) {
            
            self.schema = schema
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schema = try container.decode(String.self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(ResourceJsonSchemaType.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourceJsonSchema
        Used By: Content
    */

    class ResourceJsonSchema: Codable {
        
        
        public var schema: String?
        
        public var type: ResourceJsonSchemaType?
        

        public enum CodingKeys: String, CodingKey {
            
            case schema = "schema"
            
            case type = "type"
            
        }

        public init(schema: String? = nil, type: ResourceJsonSchemaType? = nil) {
            
            self.schema = schema
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schema = try container.decode(String.self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(ResourceJsonSchemaType.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


