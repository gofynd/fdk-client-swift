

import Foundation
public extension PublicClient.Content {
    /*
        Model: CredentialSchema
        Used By: Content
    */

    class CredentialSchema: Codable {
        
        
        public var id: String?
        
        public var configuration: ConfigurationSchema?
        
        public var entityType: String?
        
        public var type: String?
        
        public var isEnable: Bool?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case configuration = "configuration"
            
            case entityType = "entity_type"
            
            case type = "type"
            
            case isEnable = "is_enable"
            
            case updatedAt = "updated_at"
            
            case createdAt = "created_at"
            
            case v = "__v"
            
        }

        public init(configuration: ConfigurationSchema? = nil, createdAt: String? = nil, entityType: String? = nil, isEnable: Bool? = nil, type: String? = nil, updatedAt: String? = nil, id: String? = nil, v: Double? = nil) {
            
            self.id = id
            
            self.configuration = configuration
            
            self.entityType = entityType
            
            self.type = type
            
            self.isEnable = isEnable
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
            self.v = v
            
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
                    configuration = try container.decode(ConfigurationSchema.self, forKey: .configuration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
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
                    isEnable = try container.decode(Bool.self, forKey: .isEnable)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(isEnable, forKey: .isEnable)
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}
