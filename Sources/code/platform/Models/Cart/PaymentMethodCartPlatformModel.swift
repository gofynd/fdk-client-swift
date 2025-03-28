

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PaymentMethod
        Used By: Cart
    */

    class PaymentMethod: Codable {
        
        
        public var mode: String
        
        public var payment: String?
        
        public var paymentMeta: PaymentMeta
        
        public var paymentIdentifier: String?
        
        public var amount: Double?
        
        public var name: String?
        
        public var paymentExtraIdentifiers: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case payment = "payment"
            
            case paymentMeta = "payment_meta"
            
            case paymentIdentifier = "payment_identifier"
            
            case amount = "amount"
            
            case name = "name"
            
            case paymentExtraIdentifiers = "payment_extra_identifiers"
            
        }

        public init(amount: Double? = nil, mode: String, name: String? = nil, payment: String? = nil, paymentExtraIdentifiers: [String: Any]? = nil, paymentIdentifier: String? = nil, paymentMeta: PaymentMeta) {
            
            self.mode = mode
            
            self.payment = payment
            
            self.paymentMeta = paymentMeta
            
            self.paymentIdentifier = paymentIdentifier
            
            self.amount = amount
            
            self.name = name
            
            self.paymentExtraIdentifiers = paymentExtraIdentifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    payment = try container.decode(String.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentMeta = try container.decode(PaymentMeta.self, forKey: .paymentMeta)
                
            
            
            
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentExtraIdentifiers = try container.decode([String: Any].self, forKey: .paymentExtraIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(paymentMeta, forKey: .paymentMeta)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(paymentExtraIdentifiers, forKey: .paymentExtraIdentifiers)
            
            
        }
        
    }
}


