

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PaymentMethodModeOfPaymentSchema
        Used By: Order
    */

    class PaymentMethodModeOfPaymentSchema: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var subModeOfPayment: SubModeOfPaymentSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case subModeOfPayment = "sub_mode_of_payment"
            
        }

        public init(name: String, slug: String, subModeOfPayment: SubModeOfPaymentSchema? = nil) {
            
            self.name = name
            
            self.slug = slug
            
            self.subModeOfPayment = subModeOfPayment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    subModeOfPayment = try container.decode(SubModeOfPaymentSchema.self, forKey: .subModeOfPayment)
                
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
            
            
            
            
            try? container.encodeIfPresent(subModeOfPayment, forKey: .subModeOfPayment)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PaymentMethodModeOfPaymentSchema
        Used By: Order
    */

    class PaymentMethodModeOfPaymentSchema: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var subModeOfPayment: SubModeOfPaymentSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case subModeOfPayment = "sub_mode_of_payment"
            
        }

        public init(name: String, slug: String, subModeOfPayment: SubModeOfPaymentSchema? = nil) {
            
            self.name = name
            
            self.slug = slug
            
            self.subModeOfPayment = subModeOfPayment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    subModeOfPayment = try container.decode(SubModeOfPaymentSchema.self, forKey: .subModeOfPayment)
                
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
            
            
            
            
            try? container.encodeIfPresent(subModeOfPayment, forKey: .subModeOfPayment)
            
            
        }
        
    }
}


