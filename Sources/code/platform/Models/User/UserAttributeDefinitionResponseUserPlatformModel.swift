

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserAttributeDefinitionResponse
        Used By: User
    */

    class UserAttributeDefinitionResponse: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var applicationId: String?
        
        public var type: String?
        
        public var multiValue: Bool?
        
        public var customerEditable: Bool?
        
        public var encrypted: Bool?
        
        public var pinned: Bool?
        
        public var pinOrder: Int?
        
        public var validations: [UserAttributeDefinitionValidation]?
        
        public var isLocked: Bool?
        
        public var createdBy: String?
        
        public var updatedBy: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case description = "description"
            
            case applicationId = "application_id"
            
            case type = "type"
            
            case multiValue = "multi_value"
            
            case customerEditable = "customer_editable"
            
            case encrypted = "encrypted"
            
            case pinned = "pinned"
            
            case pinOrder = "pin_order"
            
            case validations = "validations"
            
            case isLocked = "is_locked"
            
            case createdBy = "created_by"
            
            case updatedBy = "updated_by"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
        }

        public init(applicationId: String? = nil, createdAt: String? = nil, createdBy: String? = nil, customerEditable: Bool? = nil, description: String? = nil, encrypted: Bool? = nil, isLocked: Bool? = nil, modifiedAt: String? = nil, multiValue: Bool? = nil, name: String? = nil, pinned: Bool? = nil, pinOrder: Int? = nil, slug: String? = nil, type: String? = nil, updatedBy: String? = nil, validations: [UserAttributeDefinitionValidation]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.slug = slug
            
            self.description = description
            
            self.applicationId = applicationId
            
            self.type = type
            
            self.multiValue = multiValue
            
            self.customerEditable = customerEditable
            
            self.encrypted = encrypted
            
            self.pinned = pinned
            
            self.pinOrder = pinOrder
            
            self.validations = validations
            
            self.isLocked = isLocked
            
            self.createdBy = createdBy
            
            self.updatedBy = updatedBy
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
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
                    customerEditable = try container.decode(Bool.self, forKey: .customerEditable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    encrypted = try container.decode(Bool.self, forKey: .encrypted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pinned = try container.decode(Bool.self, forKey: .pinned)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pinOrder = try container.decode(Int.self, forKey: .pinOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validations = try container.decode([UserAttributeDefinitionValidation].self, forKey: .validations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isLocked = try container.decode(Bool.self, forKey: .isLocked)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(customerEditable, forKey: .customerEditable)
            
            
            
            
            try? container.encodeIfPresent(encrypted, forKey: .encrypted)
            
            
            
            
            try? container.encodeIfPresent(pinned, forKey: .pinned)
            
            
            
            
            try? container.encodeIfPresent(pinOrder, forKey: .pinOrder)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
            
            
            try? container.encodeIfPresent(isLocked, forKey: .isLocked)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
        }
        
    }
}


