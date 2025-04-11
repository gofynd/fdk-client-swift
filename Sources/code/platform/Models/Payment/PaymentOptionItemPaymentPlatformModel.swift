

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentOptionItem
        Used By: Payment
    */

    class PaymentOptionItem: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var priority: Int?
        
        public var displayName: String?
        
        public var slug: String?
        
        public var integrationType: String?
        
        public var logos: PaymentModeLogo?
        
        public var isActive: Bool?
        
        public var config: [String]?
        
        public var paymentModes: [PaymentMode]?
        
        public var paymentMode: [PaymentMode]?
        
        public var checkoutType: String?
        
        public var country: [String]?
        
        public var currency: [String]?
        
        public var status: String?
        
        public var saveAllowed: Bool?
        
        public var extensionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case priority = "priority"
            
            case displayName = "display_name"
            
            case slug = "slug"
            
            case integrationType = "integration_type"
            
            case logos = "logos"
            
            case isActive = "is_active"
            
            case config = "config"
            
            case paymentModes = "payment_modes"
            
            case paymentMode = "payment_mode"
            
            case checkoutType = "checkout_type"
            
            case country = "country"
            
            case currency = "currency"
            
            case status = "status"
            
            case saveAllowed = "save_allowed"
            
            case extensionId = "extension_id"
            
        }

        public init(checkoutType: String? = nil, config: [String]? = nil, country: [String]? = nil, currency: [String]? = nil, displayName: String? = nil, extensionId: String? = nil, id: Int? = nil, integrationType: String? = nil, isActive: Bool? = nil, logos: PaymentModeLogo? = nil, name: String? = nil, paymentMode: [PaymentMode]? = nil, paymentModes: [PaymentMode]? = nil, priority: Int? = nil, saveAllowed: Bool? = nil, slug: String? = nil, status: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.priority = priority
            
            self.displayName = displayName
            
            self.slug = slug
            
            self.integrationType = integrationType
            
            self.logos = logos
            
            self.isActive = isActive
            
            self.config = config
            
            self.paymentModes = paymentModes
            
            self.paymentMode = paymentMode
            
            self.checkoutType = checkoutType
            
            self.country = country
            
            self.currency = currency
            
            self.status = status
            
            self.saveAllowed = saveAllowed
            
            self.extensionId = extensionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
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
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    integrationType = try container.decode(String.self, forKey: .integrationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode([String].self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModes = try container.decode([PaymentMode].self, forKey: .paymentModes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode([PaymentMode].self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkoutType = try container.decode(String.self, forKey: .checkoutType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode([String].self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode([String].self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    saveAllowed = try container.decode(Bool.self, forKey: .saveAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
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
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(checkoutType, forKey: .checkoutType)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(saveAllowed, forKey: .saveAllowed)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentOptionItem
        Used By: Payment
    */

    class PaymentOptionItem: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var priority: Int?
        
        public var displayName: String?
        
        public var slug: String?
        
        public var integrationType: String?
        
        public var logos: PaymentModeLogo?
        
        public var isActive: Bool?
        
        public var config: [String]?
        
        public var paymentModes: [PaymentMode]?
        
        public var paymentMode: [PaymentMode]?
        
        public var checkoutType: String?
        
        public var country: [String]?
        
        public var currency: [String]?
        
        public var status: String?
        
        public var saveAllowed: Bool?
        
        public var extensionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case priority = "priority"
            
            case displayName = "display_name"
            
            case slug = "slug"
            
            case integrationType = "integration_type"
            
            case logos = "logos"
            
            case isActive = "is_active"
            
            case config = "config"
            
            case paymentModes = "payment_modes"
            
            case paymentMode = "payment_mode"
            
            case checkoutType = "checkout_type"
            
            case country = "country"
            
            case currency = "currency"
            
            case status = "status"
            
            case saveAllowed = "save_allowed"
            
            case extensionId = "extension_id"
            
        }

        public init(checkoutType: String? = nil, config: [String]? = nil, country: [String]? = nil, currency: [String]? = nil, displayName: String? = nil, extensionId: String? = nil, id: Int? = nil, integrationType: String? = nil, isActive: Bool? = nil, logos: PaymentModeLogo? = nil, name: String? = nil, paymentMode: [PaymentMode]? = nil, paymentModes: [PaymentMode]? = nil, priority: Int? = nil, saveAllowed: Bool? = nil, slug: String? = nil, status: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.priority = priority
            
            self.displayName = displayName
            
            self.slug = slug
            
            self.integrationType = integrationType
            
            self.logos = logos
            
            self.isActive = isActive
            
            self.config = config
            
            self.paymentModes = paymentModes
            
            self.paymentMode = paymentMode
            
            self.checkoutType = checkoutType
            
            self.country = country
            
            self.currency = currency
            
            self.status = status
            
            self.saveAllowed = saveAllowed
            
            self.extensionId = extensionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
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
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    integrationType = try container.decode(String.self, forKey: .integrationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode([String].self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModes = try container.decode([PaymentMode].self, forKey: .paymentModes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode([PaymentMode].self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkoutType = try container.decode(String.self, forKey: .checkoutType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode([String].self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode([String].self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    saveAllowed = try container.decode(Bool.self, forKey: .saveAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
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
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(checkoutType, forKey: .checkoutType)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(saveAllowed, forKey: .saveAllowed)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
        }
        
    }
}


