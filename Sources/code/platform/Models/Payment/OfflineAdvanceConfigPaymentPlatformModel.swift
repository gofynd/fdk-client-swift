

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OfflineAdvanceConfig
        Used By: Payment
    */

    class OfflineAdvanceConfig: Codable {
        
        
        public var anonymous: Bool?
        
        public var userLimit: Int?
        
        public var charges: Int?
        
        public var chargesMaxValue: Int?
        
        public var chargesMinValue: Int?
        
        public var maxOrderValue: Int?
        
        public var minOrderValue: Int?
        
        public var isActive: Bool?
        
        public var name: String?
        
        public var slug: String?
        
        public var saveAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case anonymous = "anonymous"
            
            case userLimit = "user_limit"
            
            case charges = "charges"
            
            case chargesMaxValue = "charges_max_value"
            
            case chargesMinValue = "charges_min_value"
            
            case maxOrderValue = "max_order_value"
            
            case minOrderValue = "min_order_value"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case slug = "slug"
            
            case saveAllowed = "save_allowed"
            
        }

        public init(anonymous: Bool? = nil, charges: Int? = nil, chargesMaxValue: Int? = nil, chargesMinValue: Int? = nil, isActive: Bool? = nil, maxOrderValue: Int? = nil, minOrderValue: Int? = nil, name: String? = nil, saveAllowed: Bool? = nil, slug: String? = nil, userLimit: Int? = nil) {
            
            self.anonymous = anonymous
            
            self.userLimit = userLimit
            
            self.charges = charges
            
            self.chargesMaxValue = chargesMaxValue
            
            self.chargesMinValue = chargesMinValue
            
            self.maxOrderValue = maxOrderValue
            
            self.minOrderValue = minOrderValue
            
            self.isActive = isActive
            
            self.name = name
            
            self.slug = slug
            
            self.saveAllowed = saveAllowed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    anonymous = try container.decode(Bool.self, forKey: .anonymous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userLimit = try container.decode(Int.self, forKey: .userLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charges = try container.decode(Int.self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargesMaxValue = try container.decode(Int.self, forKey: .chargesMaxValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargesMinValue = try container.decode(Int.self, forKey: .chargesMinValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxOrderValue = try container.decode(Int.self, forKey: .maxOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOrderValue = try container.decode(Int.self, forKey: .minOrderValue)
                
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
                    saveAllowed = try container.decode(Bool.self, forKey: .saveAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
            
            
            try? container.encodeIfPresent(userLimit, forKey: .userLimit)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(chargesMaxValue, forKey: .chargesMaxValue)
            
            
            
            
            try? container.encodeIfPresent(chargesMinValue, forKey: .chargesMinValue)
            
            
            
            
            try? container.encodeIfPresent(maxOrderValue, forKey: .maxOrderValue)
            
            
            
            
            try? container.encodeIfPresent(minOrderValue, forKey: .minOrderValue)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(saveAllowed, forKey: .saveAllowed)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OfflineAdvanceConfig
        Used By: Payment
    */

    class OfflineAdvanceConfig: Codable {
        
        
        public var anonymous: Bool?
        
        public var userLimit: Int?
        
        public var charges: Int?
        
        public var chargesMaxValue: Int?
        
        public var chargesMinValue: Int?
        
        public var maxOrderValue: Int?
        
        public var minOrderValue: Int?
        
        public var isActive: Bool?
        
        public var name: String?
        
        public var slug: String?
        
        public var saveAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case anonymous = "anonymous"
            
            case userLimit = "user_limit"
            
            case charges = "charges"
            
            case chargesMaxValue = "charges_max_value"
            
            case chargesMinValue = "charges_min_value"
            
            case maxOrderValue = "max_order_value"
            
            case minOrderValue = "min_order_value"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case slug = "slug"
            
            case saveAllowed = "save_allowed"
            
        }

        public init(anonymous: Bool? = nil, charges: Int? = nil, chargesMaxValue: Int? = nil, chargesMinValue: Int? = nil, isActive: Bool? = nil, maxOrderValue: Int? = nil, minOrderValue: Int? = nil, name: String? = nil, saveAllowed: Bool? = nil, slug: String? = nil, userLimit: Int? = nil) {
            
            self.anonymous = anonymous
            
            self.userLimit = userLimit
            
            self.charges = charges
            
            self.chargesMaxValue = chargesMaxValue
            
            self.chargesMinValue = chargesMinValue
            
            self.maxOrderValue = maxOrderValue
            
            self.minOrderValue = minOrderValue
            
            self.isActive = isActive
            
            self.name = name
            
            self.slug = slug
            
            self.saveAllowed = saveAllowed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    anonymous = try container.decode(Bool.self, forKey: .anonymous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userLimit = try container.decode(Int.self, forKey: .userLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charges = try container.decode(Int.self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargesMaxValue = try container.decode(Int.self, forKey: .chargesMaxValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargesMinValue = try container.decode(Int.self, forKey: .chargesMinValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxOrderValue = try container.decode(Int.self, forKey: .maxOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOrderValue = try container.decode(Int.self, forKey: .minOrderValue)
                
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
                    saveAllowed = try container.decode(Bool.self, forKey: .saveAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
            
            
            try? container.encodeIfPresent(userLimit, forKey: .userLimit)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(chargesMaxValue, forKey: .chargesMaxValue)
            
            
            
            
            try? container.encodeIfPresent(chargesMinValue, forKey: .chargesMinValue)
            
            
            
            
            try? container.encodeIfPresent(maxOrderValue, forKey: .maxOrderValue)
            
            
            
            
            try? container.encodeIfPresent(minOrderValue, forKey: .minOrderValue)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(saveAllowed, forKey: .saveAllowed)
            
            
        }
        
    }
}


