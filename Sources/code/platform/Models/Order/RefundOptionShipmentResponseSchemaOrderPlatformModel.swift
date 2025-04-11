

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundOptionShipmentResponseSchema
        Used By: Order
    */

    class RefundOptionShipmentResponseSchema: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var displayName: String?
        
        public var isActive: Bool?
        
        public var breakups: [RefundBreakup]?
        
        public var option: [RefundSubOption]?
        
        public var offline: Bool?
        
        public var amount: Double?
        
        public var slug: String?
        
        public var value: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case isActive = "is_active"
            
            case breakups = "breakups"
            
            case option = "option"
            
            case offline = "offline"
            
            case amount = "amount"
            
            case slug = "slug"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(amount: Double? = nil, breakups: [RefundBreakup]? = nil, displayName: String? = nil, id: Int? = nil, isActive: Bool? = nil, name: String? = nil, offline: Bool? = nil, option: [RefundSubOption]? = nil, slug: String? = nil, type: String? = nil, value: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.isActive = isActive
            
            self.breakups = breakups
            
            self.option = option
            
            self.offline = offline
            
            self.amount = amount
            
            self.slug = slug
            
            self.value = value
            
            self.type = type
            
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    breakups = try container.decode([RefundBreakup].self, forKey: .breakups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    option = try container.decode([RefundSubOption].self, forKey: .option)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offline = try container.decode(Bool.self, forKey: .offline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
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
                    value = try container.decode(String.self, forKey: .value)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(breakups, forKey: .breakups)
            
            
            
            
            try? container.encodeIfPresent(option, forKey: .option)
            
            
            
            
            try? container.encodeIfPresent(offline, forKey: .offline)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundOptionShipmentResponseSchema
        Used By: Order
    */

    class RefundOptionShipmentResponseSchema: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var displayName: String?
        
        public var isActive: Bool?
        
        public var breakups: [RefundBreakup]?
        
        public var option: [RefundSubOption]?
        
        public var offline: Bool?
        
        public var amount: Double?
        
        public var slug: String?
        
        public var value: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case isActive = "is_active"
            
            case breakups = "breakups"
            
            case option = "option"
            
            case offline = "offline"
            
            case amount = "amount"
            
            case slug = "slug"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(amount: Double? = nil, breakups: [RefundBreakup]? = nil, displayName: String? = nil, id: Int? = nil, isActive: Bool? = nil, name: String? = nil, offline: Bool? = nil, option: [RefundSubOption]? = nil, slug: String? = nil, type: String? = nil, value: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.isActive = isActive
            
            self.breakups = breakups
            
            self.option = option
            
            self.offline = offline
            
            self.amount = amount
            
            self.slug = slug
            
            self.value = value
            
            self.type = type
            
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    breakups = try container.decode([RefundBreakup].self, forKey: .breakups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    option = try container.decode([RefundSubOption].self, forKey: .option)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offline = try container.decode(Bool.self, forKey: .offline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
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
                    value = try container.decode(String.self, forKey: .value)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(breakups, forKey: .breakups)
            
            
            
            
            try? container.encodeIfPresent(option, forKey: .option)
            
            
            
            
            try? container.encodeIfPresent(offline, forKey: .offline)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


