

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CreatePaymentLinkMeta
        Used By: Payment
    */

    class CreatePaymentLinkMeta: Codable {
        
        
        public var cartId: String
        
        public var checkoutMode: String
        
        public var amount: String
        
        public var assignCardId: String?
        
        public var pincode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case cartId = "cart_id"
            
            case checkoutMode = "checkout_mode"
            
            case amount = "amount"
            
            case assignCardId = "assign_card_id"
            
            case pincode = "pincode"
            
        }

        public init(amount: String, assignCardId: String? = nil, cartId: String, checkoutMode: String, pincode: String) {
            
            self.cartId = cartId
            
            self.checkoutMode = checkoutMode
            
            self.amount = amount
            
            self.assignCardId = assignCardId
            
            self.pincode = pincode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                cartId = try container.decode(String.self, forKey: .cartId)
                
            
            
            
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
            
            
            
                amount = try container.decode(String.self, forKey: .amount)
                
            
            
            
                do {
                    assignCardId = try container.decode(String.self, forKey: .assignCardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encode(assignCardId, forKey: .assignCardId)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CreatePaymentLinkMeta
        Used By: Payment
    */

    class CreatePaymentLinkMeta: Codable {
        
        
        public var cartId: String
        
        public var checkoutMode: String
        
        public var amount: String
        
        public var assignCardId: String?
        
        public var pincode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case cartId = "cart_id"
            
            case checkoutMode = "checkout_mode"
            
            case amount = "amount"
            
            case assignCardId = "assign_card_id"
            
            case pincode = "pincode"
            
        }

        public init(amount: String, assignCardId: String? = nil, cartId: String, checkoutMode: String, pincode: String) {
            
            self.cartId = cartId
            
            self.checkoutMode = checkoutMode
            
            self.amount = amount
            
            self.assignCardId = assignCardId
            
            self.pincode = pincode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                cartId = try container.decode(String.self, forKey: .cartId)
                
            
            
            
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
            
            
            
                amount = try container.decode(String.self, forKey: .amount)
                
            
            
            
                do {
                    assignCardId = try container.decode(String.self, forKey: .assignCardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encode(assignCardId, forKey: .assignCardId)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
}


