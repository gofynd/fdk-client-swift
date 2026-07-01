

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourceDefinition
        Used By: Content
    */

    class ResourceDefinition: Codable {
        
        
        public var id: String?
        
        public var translatableResourceId: String
        
        public var jsonSchema: ResourceJsonSchema?
        
        public var uiSchema: ResourceUISchema?
        
        public var bulkDetails: ResourceBulkDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case translatableResourceId = "translatable_resource_id"
            
            case jsonSchema = "json_schema"
            
            case uiSchema = "ui_schema"
            
            case bulkDetails = "bulk_details"
            
        }

        public init(bulkDetails: ResourceBulkDetails? = nil, jsonSchema: ResourceJsonSchema? = nil, translatableResourceId: String, uiSchema: ResourceUISchema? = nil, id: String? = nil) {
            
            self.id = id
            
            self.translatableResourceId = translatableResourceId
            
            self.jsonSchema = jsonSchema
            
            self.uiSchema = uiSchema
            
            self.bulkDetails = bulkDetails
            
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
                
            
            
                translatableResourceId = try container.decode(String.self, forKey: .translatableResourceId)
                
            
            
            
                do {
                    jsonSchema = try container.decode(ResourceJsonSchema.self, forKey: .jsonSchema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uiSchema = try container.decode(ResourceUISchema.self, forKey: .uiSchema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkDetails = try container.decode(ResourceBulkDetails.self, forKey: .bulkDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(translatableResourceId, forKey: .translatableResourceId)
            
            
            
            
            try? container.encodeIfPresent(jsonSchema, forKey: .jsonSchema)
            
            
            
            
            try? container.encodeIfPresent(uiSchema, forKey: .uiSchema)
            
            
            
            
            try? container.encodeIfPresent(bulkDetails, forKey: .bulkDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourceDefinition
        Used By: Content
    */

    class ResourceDefinition: Codable {
        
        
        public var id: String?
        
        public var translatableResourceId: String
        
        public var jsonSchema: ResourceJsonSchema?
        
        public var uiSchema: ResourceUISchema?
        
        public var bulkDetails: ResourceBulkDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case translatableResourceId = "translatable_resource_id"
            
            case jsonSchema = "json_schema"
            
            case uiSchema = "ui_schema"
            
            case bulkDetails = "bulk_details"
            
        }

        public init(bulkDetails: ResourceBulkDetails? = nil, jsonSchema: ResourceJsonSchema? = nil, translatableResourceId: String, uiSchema: ResourceUISchema? = nil, id: String? = nil) {
            
            self.id = id
            
            self.translatableResourceId = translatableResourceId
            
            self.jsonSchema = jsonSchema
            
            self.uiSchema = uiSchema
            
            self.bulkDetails = bulkDetails
            
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
                
            
            
                translatableResourceId = try container.decode(String.self, forKey: .translatableResourceId)
                
            
            
            
                do {
                    jsonSchema = try container.decode(ResourceJsonSchema.self, forKey: .jsonSchema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uiSchema = try container.decode(ResourceUISchema.self, forKey: .uiSchema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkDetails = try container.decode(ResourceBulkDetails.self, forKey: .bulkDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(translatableResourceId, forKey: .translatableResourceId)
            
            
            
            
            try? container.encodeIfPresent(jsonSchema, forKey: .jsonSchema)
            
            
            
            
            try? container.encodeIfPresent(uiSchema, forKey: .uiSchema)
            
            
            
            
            try? container.encodeIfPresent(bulkDetails, forKey: .bulkDetails)
            
            
        }
        
    }
}


