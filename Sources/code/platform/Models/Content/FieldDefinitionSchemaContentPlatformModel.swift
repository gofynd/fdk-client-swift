

import Foundation


public extension PlatformClient.Content {
    /*
        Model: FieldDefinitionSchema
        Used By: Content
    */

    class FieldDefinitionSchema: Codable {
        
        
        public var resource: String?
        
        public var name: String?
        
        public var namespace: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var type: String?
        
        public var multiValue: Bool?
        
        public var validations: [FieldValidations]?
        
        public var companyId: String?
        
        public var required: Bool?
        
        public var isDeleted: Bool?
        
        public var typeName: String?
        
        public var invalidFieldsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case resource = "resource"
            
            case name = "name"
            
            case namespace = "namespace"
            
            case slug = "slug"
            
            case description = "description"
            
            case type = "type"
            
            case multiValue = "multi_value"
            
            case validations = "validations"
            
            case companyId = "company_id"
            
            case required = "required"
            
            case isDeleted = "is_deleted"
            
            case typeName = "type_name"
            
            case invalidFieldsCount = "invalid_fields_count"
            
        }

        public init(companyId: String? = nil, description: String? = nil, invalidFieldsCount: Int? = nil, isDeleted: Bool? = nil, multiValue: Bool? = nil, name: String? = nil, namespace: String? = nil, required: Bool? = nil, resource: String? = nil, slug: String? = nil, type: String? = nil, typeName: String? = nil, validations: [FieldValidations]? = nil) {
            
            self.resource = resource
            
            self.name = name
            
            self.namespace = namespace
            
            self.slug = slug
            
            self.description = description
            
            self.type = type
            
            self.multiValue = multiValue
            
            self.validations = validations
            
            self.companyId = companyId
            
            self.required = required
            
            self.isDeleted = isDeleted
            
            self.typeName = typeName
            
            self.invalidFieldsCount = invalidFieldsCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
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
        
        
        public var resource: String?
        
        public var name: String?
        
        public var namespace: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var type: String?
        
        public var multiValue: Bool?
        
        public var validations: [FieldValidations]?
        
        public var companyId: String?
        
        public var required: Bool?
        
        public var isDeleted: Bool?
        
        public var typeName: String?
        
        public var invalidFieldsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case resource = "resource"
            
            case name = "name"
            
            case namespace = "namespace"
            
            case slug = "slug"
            
            case description = "description"
            
            case type = "type"
            
            case multiValue = "multi_value"
            
            case validations = "validations"
            
            case companyId = "company_id"
            
            case required = "required"
            
            case isDeleted = "is_deleted"
            
            case typeName = "type_name"
            
            case invalidFieldsCount = "invalid_fields_count"
            
        }

        public init(companyId: String? = nil, description: String? = nil, invalidFieldsCount: Int? = nil, isDeleted: Bool? = nil, multiValue: Bool? = nil, name: String? = nil, namespace: String? = nil, required: Bool? = nil, resource: String? = nil, slug: String? = nil, type: String? = nil, typeName: String? = nil, validations: [FieldValidations]? = nil) {
            
            self.resource = resource
            
            self.name = name
            
            self.namespace = namespace
            
            self.slug = slug
            
            self.description = description
            
            self.type = type
            
            self.multiValue = multiValue
            
            self.validations = validations
            
            self.companyId = companyId
            
            self.required = required
            
            self.isDeleted = isDeleted
            
            self.typeName = typeName
            
            self.invalidFieldsCount = invalidFieldsCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
            try? container.encodeIfPresent(typeName, forKey: .typeName)
            
            
            
            
            try? container.encodeIfPresent(invalidFieldsCount, forKey: .invalidFieldsCount)
            
            
        }
        
    }
}


