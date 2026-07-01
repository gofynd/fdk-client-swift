

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: PaymentMethod
        Used By: Cart
    */
    class PaymentMethod: Codable {
        
        public var paymentMeta: PaymentMeta
        
        public var mode: String
        
        public var payment: String?
        
        public var amount: Double?
        
        public var name: String?
        
        public var paymentExtraIdentifiers: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMeta = "payment_meta"
            
            case mode = "mode"
            
            case payment = "payment"
            
            case amount = "amount"
            
            case name = "name"
            
            case paymentExtraIdentifiers = "payment_extra_identifiers"
            
        }

        public init(amount: Double? = nil, mode: String, name: String? = nil, payment: String? = nil, paymentExtraIdentifiers: [String: Any]? = nil, paymentMeta: PaymentMeta) {
            
            self.paymentMeta = paymentMeta
            
            self.mode = mode
            
            self.payment = payment
            
            self.amount = amount
            
            self.name = name
            
            self.paymentExtraIdentifiers = paymentExtraIdentifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            paymentMeta = try container.decode(PaymentMeta.self, forKey: .paymentMeta)
            
            
            
            
            mode = try container.decode(String.self, forKey: .mode)
            
            
            
            
            do {
                payment = try container.decode(String.self, forKey: .payment)
            
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
            
            
            try? container.encodeIfPresent(paymentMeta, forKey: .paymentMeta)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(paymentExtraIdentifiers, forKey: .paymentExtraIdentifiers)
            
            
        }
        
    }
}
