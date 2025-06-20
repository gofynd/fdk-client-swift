

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserAttributeDefinition
        Used By: User
    */

    class UserAttributeDefinition: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var applicationId: String?
        
        public var type: String?
        
        public var icon: String?
        
        public var orderingChannels: [String]?
        
        public var masking: AttributeMaskingProperties?
        
        public var registration: AttributeRegistrationProperties?
        
        public var isMultiValue: Bool?
        
        public var customerEditable: Bool?
        
        public var encrypted: Bool?
        
        public var pinned: Bool?
        
        public var pinOrder: Int?
        
        public var validations: [[String: Any]]?
        
        public var isLocked: Bool?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case description = "description"
            
            case applicationId = "application_id"
            
            case type = "type"
            
            case icon = "icon"
            
            case orderingChannels = "ordering_channels"
            
            case masking = "masking"
            
            case registration = "registration"
            
            case isMultiValue = "is_multi_value"
            
            case customerEditable = "customer_editable"
            
            case encrypted = "encrypted"
            
            case pinned = "pinned"
            
            case pinOrder = "pin_order"
            
            case validations = "validations"
            
            case isLocked = "is_locked"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
        }

        public init(applicationId: String? = nil, createdAt: String? = nil, customerEditable: Bool? = nil, description: String? = nil, encrypted: Bool? = nil, icon: String? = nil, isLocked: Bool? = nil, isMultiValue: Bool? = nil, masking: AttributeMaskingProperties? = nil, modifiedAt: String? = nil, name: String? = nil, orderingChannels: [String]? = nil, pinned: Bool? = nil, pinOrder: Int? = nil, registration: AttributeRegistrationProperties? = nil, slug: String? = nil, type: String? = nil, validations: [[String: Any]]? = nil, id: String? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.slug = slug
            
            self.description = description
            
            self.applicationId = applicationId
            
            self.type = type
            
            self.icon = icon
            
            self.orderingChannels = orderingChannels
            
            self.masking = masking
            
            self.registration = registration
            
            self.isMultiValue = isMultiValue
            
            self.customerEditable = customerEditable
            
            self.encrypted = encrypted
            
            self.pinned = pinned
            
            self.pinOrder = pinOrder
            
            self.validations = validations
            
            self.isLocked = isLocked
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
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
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannels = try container.decode([String].self, forKey: .orderingChannels)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    masking = try container.decode(AttributeMaskingProperties.self, forKey: .masking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    registration = try container.decode(AttributeRegistrationProperties.self, forKey: .registration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isMultiValue = try container.decode(Bool.self, forKey: .isMultiValue)
                
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
                    validations = try container.decode([[String: Any]].self, forKey: .validations)
                
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
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
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
            
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            
            try? container.encodeIfPresent(orderingChannels, forKey: .orderingChannels)
            
            
            
            
            try? container.encodeIfPresent(masking, forKey: .masking)
            
            
            
            
            try? container.encodeIfPresent(registration, forKey: .registration)
            
            
            
            
            try? container.encodeIfPresent(isMultiValue, forKey: .isMultiValue)
            
            
            
            
            try? container.encodeIfPresent(customerEditable, forKey: .customerEditable)
            
            
            
            
            try? container.encodeIfPresent(encrypted, forKey: .encrypted)
            
            
            
            
            try? container.encodeIfPresent(pinned, forKey: .pinned)
            
            
            
            
            try? container.encodeIfPresent(pinOrder, forKey: .pinOrder)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
            
            
            try? container.encodeIfPresent(isLocked, forKey: .isLocked)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


