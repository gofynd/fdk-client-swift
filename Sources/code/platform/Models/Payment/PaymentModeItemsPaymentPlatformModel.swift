

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentModeItems
        Used By: Payment
    */

    class PaymentModeItems: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var shortCode: String?
        
        public var logos: LogoSet?
        
        public var isActive: Bool?
        
        public var subPaymentMode: [SubPaymentMode]?
        
        public var isActiveAtPg: Bool?
        
        public var fulfillmentOptions: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case shortCode = "short_code"
            
            case logos = "logos"
            
            case isActive = "is_active"
            
            case subPaymentMode = "sub_payment_mode"
            
            case isActiveAtPg = "is_active_at_pg"
            
            case fulfillmentOptions = "fulfillment_options"
            
        }

        public init(fulfillmentOptions: [String: Any]? = nil, id: Int? = nil, isActive: Bool? = nil, isActiveAtPg: Bool? = nil, logos: LogoSet? = nil, name: String? = nil, shortCode: String? = nil, subPaymentMode: [SubPaymentMode]? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.shortCode = shortCode
            
            self.logos = logos
            
            self.isActive = isActive
            
            self.subPaymentMode = subPaymentMode
            
            self.isActiveAtPg = isActiveAtPg
            
            self.fulfillmentOptions = fulfillmentOptions
            
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
                    shortCode = try container.decode(String.self, forKey: .shortCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(LogoSet.self, forKey: .logos)
                
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
                    subPaymentMode = try container.decode([SubPaymentMode].self, forKey: .subPaymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActiveAtPg = try container.decode(Bool.self, forKey: .isActiveAtPg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptions = try container.decode([String: Any].self, forKey: .fulfillmentOptions)
                
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
            
            
            
            
            try? container.encodeIfPresent(shortCode, forKey: .shortCode)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(subPaymentMode, forKey: .subPaymentMode)
            
            
            
            
            try? container.encodeIfPresent(isActiveAtPg, forKey: .isActiveAtPg)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptions, forKey: .fulfillmentOptions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentModeItems
        Used By: Payment
    */

    class PaymentModeItems: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var shortCode: String?
        
        public var logos: LogoSet?
        
        public var isActive: Bool?
        
        public var subPaymentMode: [SubPaymentMode]?
        
        public var isActiveAtPg: Bool?
        
        public var fulfillmentOptions: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case shortCode = "short_code"
            
            case logos = "logos"
            
            case isActive = "is_active"
            
            case subPaymentMode = "sub_payment_mode"
            
            case isActiveAtPg = "is_active_at_pg"
            
            case fulfillmentOptions = "fulfillment_options"
            
        }

        public init(fulfillmentOptions: [String: Any]? = nil, id: Int? = nil, isActive: Bool? = nil, isActiveAtPg: Bool? = nil, logos: LogoSet? = nil, name: String? = nil, shortCode: String? = nil, subPaymentMode: [SubPaymentMode]? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.shortCode = shortCode
            
            self.logos = logos
            
            self.isActive = isActive
            
            self.subPaymentMode = subPaymentMode
            
            self.isActiveAtPg = isActiveAtPg
            
            self.fulfillmentOptions = fulfillmentOptions
            
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
                    shortCode = try container.decode(String.self, forKey: .shortCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(LogoSet.self, forKey: .logos)
                
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
                    subPaymentMode = try container.decode([SubPaymentMode].self, forKey: .subPaymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActiveAtPg = try container.decode(Bool.self, forKey: .isActiveAtPg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptions = try container.decode([String: Any].self, forKey: .fulfillmentOptions)
                
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
            
            
            
            
            try? container.encodeIfPresent(shortCode, forKey: .shortCode)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(subPaymentMode, forKey: .subPaymentMode)
            
            
            
            
            try? container.encodeIfPresent(isActiveAtPg, forKey: .isActiveAtPg)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptions, forKey: .fulfillmentOptions)
            
            
        }
        
    }
}


