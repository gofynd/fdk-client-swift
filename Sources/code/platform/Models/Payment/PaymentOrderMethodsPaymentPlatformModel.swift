

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentOrderMethods
        Used By: Payment
    */

    class PaymentOrderMethods: Codable {
        
        
        public var amount: Double
        
        public var payment: String?
        
        public var mode: String
        
        public var meta: PaymentMethodsMetaOrder
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case payment = "payment"
            
            case mode = "mode"
            
            case meta = "meta"
            
            case name = "name"
            
        }

        public init(amount: Double, meta: PaymentMethodsMetaOrder, mode: String, name: String, payment: String? = nil) {
            
            self.amount = amount
            
            self.payment = payment
            
            self.mode = mode
            
            self.meta = meta
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    payment = try container.decode(String.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                meta = try container.decode(PaymentMethodsMetaOrder.self, forKey: .meta)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentOrderMethods
        Used By: Payment
    */

    class PaymentOrderMethods: Codable {
        
        
        public var amount: Double
        
        public var payment: String?
        
        public var mode: String
        
        public var meta: PaymentMethodsMetaOrder
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case payment = "payment"
            
            case mode = "mode"
            
            case meta = "meta"
            
            case name = "name"
            
        }

        public init(amount: Double, meta: PaymentMethodsMetaOrder, mode: String, name: String, payment: String? = nil) {
            
            self.amount = amount
            
            self.payment = payment
            
            self.mode = mode
            
            self.meta = meta
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    payment = try container.decode(String.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                meta = try container.decode(PaymentMethodsMetaOrder.self, forKey: .meta)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


