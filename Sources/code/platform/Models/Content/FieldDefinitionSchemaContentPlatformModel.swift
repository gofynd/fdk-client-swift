

import Foundation


public extension PlatformClient.Content {
    /*
        Model: FieldDefinitionSchema
        Used By: Content
    */

    class FieldDefinitionSchema: Codable {
        
        
        public var id: String?
        
        public var creator: String?
        
        public var resource: String?
        
        public var name: String?
        
        public var namespace: String?
        
        public var key: String?
        
        public var description: String?
        
        public var type: String?
        
        public var multiValue: Bool?
        
        public var validations: [FieldValidations]?
        
        public var companyId: String?
        
        public var createdBy: String?
        
        public var updatedBy: String?
        
        public var required: Bool?
        
        public var isDeleted: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var typeName: String?
        
        public var invalidFieldsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case creator = "creator"
            
            case resource = "resource"
            
            case name = "name"
            
            case namespace = "namespace"
            
            case key = "key"
            
            case description = "description"
            
            case type = "type"
            
            case multiValue = "multi_value"
            
            case validations = "validations"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case updatedBy = "updated_by"
            
            case required = "required"
            
            case isDeleted = "is_deleted"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case typeName = "type_name"
            
            case invalidFieldsCount = "invalid_fields_count"
            
        }

        public init(companyId: String? = nil, createdAt: String? = nil, createdBy: String? = nil, creator: String? = nil, description: String? = nil, invalidFieldsCount: Int? = nil, isDeleted: Bool? = nil, key: String? = nil, multiValue: Bool? = nil, name: String? = nil, namespace: String? = nil, required: Bool? = nil, resource: String? = nil, type: String? = nil, typeName: String? = nil, updatedAt: String? = nil, updatedBy: String? = nil, validations: [FieldValidations]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.creator = creator
            
            self.resource = resource
            
            self.name = name
            
            self.namespace = namespace
            
            self.key = key
            
            self.description = description
            
            self.type = type
            
            self.multiValue = multiValue
            
            self.validations = validations
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.updatedBy = updatedBy
            
            self.required = required
            
            self.isDeleted = isDeleted
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.typeName = typeName
            
            self.invalidFieldsCount = invalidFieldsCount
            
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
                    creator = try container.decode(String.self, forKey: .creator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resource = try container.decode(String.self, forKey: .resource)
                
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
                    namespace = try container.decode(String.self, forKey: .namespace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiValue = try container.decode(Bool.self, forKey: .multiValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validations = try container.decode([FieldValidations].self, forKey: .validations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    required = try container.decode(Bool.self, forKey: .required)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
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
                    typeName = try container.decode(String.self, forKey: .typeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invalidFieldsCount = try container.decode(Int.self, forKey: .invalidFieldsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(typeName, forKey: .typeName)
            
            
            
            
            try? container.encodeIfPresent(invalidFieldsCount, forKey: .invalidFieldsCount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: FieldDefinitionSchema
        Used By: Content
    */

    class FieldDefinitionSchema: Codable {
        
        
        public var id: String?
        
        public var creator: String?
        
        public var resource: String?
        
        public var name: String?
        
        public var namespace: String?
        
        public var key: String?
        
        public var description: String?
        
        public var type: String?
        
        public var multiValue: Bool?
        
        public var validations: [FieldValidations]?
        
        public var companyId: String?
        
        public var createdBy: String?
        
        public var updatedBy: String?
        
        public var required: Bool?
        
        public var isDeleted: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var typeName: String?
        
        public var invalidFieldsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case creator = "creator"
            
            case resource = "resource"
            
            case name = "name"
            
            case namespace = "namespace"
            
            case key = "key"
            
            case description = "description"
            
            case type = "type"
            
            case multiValue = "multi_value"
            
            case validations = "validations"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case updatedBy = "updated_by"
            
            case required = "required"
            
            case isDeleted = "is_deleted"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case typeName = "type_name"
            
            case invalidFieldsCount = "invalid_fields_count"
            
        }

        public init(companyId: String? = nil, createdAt: String? = nil, createdBy: String? = nil, creator: String? = nil, description: String? = nil, invalidFieldsCount: Int? = nil, isDeleted: Bool? = nil, key: String? = nil, multiValue: Bool? = nil, name: String? = nil, namespace: String? = nil, required: Bool? = nil, resource: String? = nil, type: String? = nil, typeName: String? = nil, updatedAt: String? = nil, updatedBy: String? = nil, validations: [FieldValidations]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.creator = creator
            
            self.resource = resource
            
            self.name = name
            
            self.namespace = namespace
            
            self.key = key
            
            self.description = description
            
            self.type = type
            
            self.multiValue = multiValue
            
            self.validations = validations
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.updatedBy = updatedBy
            
            self.required = required
            
            self.isDeleted = isDeleted
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.typeName = typeName
            
            self.invalidFieldsCount = invalidFieldsCount
            
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
                    creator = try container.decode(String.self, forKey: .creator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resource = try container.decode(String.self, forKey: .resource)
                
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
                    namespace = try container.decode(String.self, forKey: .namespace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiValue = try container.decode(Bool.self, forKey: .multiValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validations = try container.decode([FieldValidations].self, forKey: .validations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    required = try container.decode(Bool.self, forKey: .required)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
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
                    typeName = try container.decode(String.self, forKey: .typeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invalidFieldsCount = try container.decode(Int.self, forKey: .invalidFieldsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(typeName, forKey: .typeName)
            
            
            
            
            try? container.encodeIfPresent(invalidFieldsCount, forKey: .invalidFieldsCount)
            
            
        }
        
    }
}


