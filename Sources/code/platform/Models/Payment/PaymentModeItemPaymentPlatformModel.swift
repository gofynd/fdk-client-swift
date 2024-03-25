

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentModeItem
        Used By: Payment
    */

    class PaymentModeItem: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var logos: PaymentModeLogo?
        
        public var isActive: Bool?
        
        public var priority: Int?
        
        public var subPaymentMode: [SubPaymentMode]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case logos = "logos"
            
            case isActive = "is_active"
            
            case priority = "priority"
            
            case subPaymentMode = "sub_payment_mode"
            
        }

        public init(id: Int? = nil, isActive: Bool? = nil, logos: PaymentModeLogo? = nil, name: String? = nil, priority: Int? = nil, subPaymentMode: [SubPaymentMode]? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.logos = logos
            
            self.isActive = isActive
            
            self.priority = priority
            
            self.subPaymentMode = subPaymentMode
            
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
                    priority = try container.decode(Int.self, forKey: .priority)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(subPaymentMode, forKey: .subPaymentMode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentModeItem
        Used By: Payment
    */

    class PaymentModeItem: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var logos: PaymentModeLogo?
        
        public var isActive: Bool?
        
        public var priority: Int?
        
        public var subPaymentMode: [SubPaymentMode]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case logos = "logos"
            
            case isActive = "is_active"
            
            case priority = "priority"
            
            case subPaymentMode = "sub_payment_mode"
            
        }

        public init(id: Int? = nil, isActive: Bool? = nil, logos: PaymentModeLogo? = nil, name: String? = nil, priority: Int? = nil, subPaymentMode: [SubPaymentMode]? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.logos = logos
            
            self.isActive = isActive
            
            self.priority = priority
            
            self.subPaymentMode = subPaymentMode
            
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
                    priority = try container.decode(Int.self, forKey: .priority)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(subPaymentMode, forKey: .subPaymentMode)
            
            
        }
        
    }
}


