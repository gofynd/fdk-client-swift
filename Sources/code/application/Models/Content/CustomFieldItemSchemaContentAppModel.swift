

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: CustomFieldItemSchema
        Used By: Content
    */
    class CustomFieldItemSchema: Codable {
        
        public var id: String?
        
        public var namespace: String?
        
        public var resource: String?
        
        public var value: [String]?
        
        public var type: String?
        
        public var multiValue: Bool?
        
        public var companyId: String?
        
        public var applicationId: String?
        
        public var hasInvalidValues: Bool?
        
        public var invalidValueErrors: [[String: Any]]?
        
        public var isDeleted: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var resourceSlug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case namespace = "namespace"
            
            case resource = "resource"
            
            case value = "value"
            
            case type = "type"
            
            case multiValue = "multi_value"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case hasInvalidValues = "has_invalid_values"
            
            case invalidValueErrors = "invalid_value_errors"
            
            case isDeleted = "is_deleted"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case resourceSlug = "resource_slug"
            
        }

        public init(applicationId: String? = nil, companyId: String? = nil, createdAt: String? = nil, hasInvalidValues: Bool? = nil, id: String? = nil, invalidValueErrors: [[String: Any]]? = nil, isDeleted: Bool? = nil, multiValue: Bool? = nil, namespace: String? = nil, resource: String? = nil, resourceSlug: String? = nil, slug: String? = nil, type: String? = nil, updatedAt: String? = nil, value: [String]? = nil) {
            
            self.id = id
            
            self.namespace = namespace
            
            self.resource = resource
            
            self.value = value
            
            self.type = type
            
            self.multiValue = multiValue
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.hasInvalidValues = hasInvalidValues
            
            self.invalidValueErrors = invalidValueErrors
            
            self.isDeleted = isDeleted
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.resourceSlug = resourceSlug
            
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
                namespace = try container.decode(String.self, forKey: .namespace)
            
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
                value = try container.decode([String].self, forKey: .value)
            
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
                companyId = try container.decode(String.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                hasInvalidValues = try container.decode(Bool.self, forKey: .hasInvalidValues)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                invalidValueErrors = try container.decode([[String: Any]].self, forKey: .invalidValueErrors)
            
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
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                resourceSlug = try container.decode(String.self, forKey: .resourceSlug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            try? container.encodeIfPresent(hasInvalidValues, forKey: .hasInvalidValues)
            
            
            
            try? container.encodeIfPresent(invalidValueErrors, forKey: .invalidValueErrors)
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(resourceSlug, forKey: .resourceSlug)
            
            
        }
        
    }
}
