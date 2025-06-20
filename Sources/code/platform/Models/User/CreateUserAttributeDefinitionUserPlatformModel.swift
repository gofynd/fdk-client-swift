

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateUserAttributeDefinition
        Used By: User
    */

    class CreateUserAttributeDefinition: Codable {
        
        
        public var name: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var type: String?
        
        public var icon: String?
        
        public var orderingChannels: [String]?
        
        public var masking: AttributeMaskingProperties?
        
        public var registration: AttributeRegistrationProperties?
        
        public var isMultiValue: Bool?
        
        public var customerEditable: Bool?
        
        public var encrypted: Bool?
        
        public var pinned: Bool?
        
        public var pinOrder: Double?
        
        public var defaultValue: String?
        
        public var validations: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case description = "description"
            
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
            
            case defaultValue = "default_value"
            
            case validations = "validations"
            
        }

        public init(customerEditable: Bool? = nil, defaultValue: String? = nil, description: String? = nil, encrypted: Bool? = nil, icon: String? = nil, isMultiValue: Bool? = nil, masking: AttributeMaskingProperties? = nil, name: String? = nil, orderingChannels: [String]? = nil, pinned: Bool? = nil, pinOrder: Double? = nil, registration: AttributeRegistrationProperties? = nil, slug: String? = nil, type: String? = nil, validations: [[String: Any]]? = nil) {
            
            self.name = name
            
            self.slug = slug
            
            self.description = description
            
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
            
            self.defaultValue = defaultValue
            
            self.validations = validations
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    pinOrder = try container.decode(Double.self, forKey: .pinOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultValue = try container.decode(String.self, forKey: .defaultValue)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(defaultValue, forKey: .defaultValue)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
        }
        
    }
}


