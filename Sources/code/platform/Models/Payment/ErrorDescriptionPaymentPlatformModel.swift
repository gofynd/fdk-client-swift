

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ErrorDescription
        Used By: Payment
    */

    class ErrorDescription: Codable {
        
        
        public var msg: String?
        
        public var paymentTransactionId: String?
        
        public var invalidId: Bool?
        
        public var merchantOrderId: String?
        
        public var merchantName: String?
        
        public var amount: Double?
        
        public var expired: Bool?
        
        public var cancelled: Bool?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case msg = "msg"
            
            case paymentTransactionId = "payment_transaction_id"
            
            case invalidId = "invalid_id"
            
            case merchantOrderId = "merchant_order_id"
            
            case merchantName = "merchant_name"
            
            case amount = "amount"
            
            case expired = "expired"
            
            case cancelled = "cancelled"
            
            case description = "description"
            
        }

        public init(amount: Double? = nil, cancelled: Bool? = nil, description: String? = nil, expired: Bool? = nil, invalidId: Bool? = nil, merchantName: String? = nil, merchantOrderId: String? = nil, msg: String? = nil, paymentTransactionId: String? = nil) {
            
            self.msg = msg
            
            self.paymentTransactionId = paymentTransactionId
            
            self.invalidId = invalidId
            
            self.merchantOrderId = merchantOrderId
            
            self.merchantName = merchantName
            
            self.amount = amount
            
            self.expired = expired
            
            self.cancelled = cancelled
            
            self.description = description
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    msg = try container.decode(String.self, forKey: .msg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentTransactionId = try container.decode(String.self, forKey: .paymentTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invalidId = try container.decode(Bool.self, forKey: .invalidId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantName = try container.decode(String.self, forKey: .merchantName)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelled = try container.decode(Bool.self, forKey: .cancelled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(msg, forKey: .msg)
            
            
            
            
            try? container.encodeIfPresent(paymentTransactionId, forKey: .paymentTransactionId)
            
            
            
            
            try? container.encodeIfPresent(invalidId, forKey: .invalidId)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(merchantName, forKey: .merchantName)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(expired, forKey: .expired)
            
            
            
            
            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ErrorDescription
        Used By: Payment
    */

    class ErrorDescription: Codable {
        
        
        public var msg: String?
        
        public var paymentTransactionId: String?
        
        public var invalidId: Bool?
        
        public var merchantOrderId: String?
        
        public var merchantName: String?
        
        public var amount: Double?
        
        public var expired: Bool?
        
        public var cancelled: Bool?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case msg = "msg"
            
            case paymentTransactionId = "payment_transaction_id"
            
            case invalidId = "invalid_id"
            
            case merchantOrderId = "merchant_order_id"
            
            case merchantName = "merchant_name"
            
            case amount = "amount"
            
            case expired = "expired"
            
            case cancelled = "cancelled"
            
            case description = "description"
            
        }

        public init(amount: Double? = nil, cancelled: Bool? = nil, description: String? = nil, expired: Bool? = nil, invalidId: Bool? = nil, merchantName: String? = nil, merchantOrderId: String? = nil, msg: String? = nil, paymentTransactionId: String? = nil) {
            
            self.msg = msg
            
            self.paymentTransactionId = paymentTransactionId
            
            self.invalidId = invalidId
            
            self.merchantOrderId = merchantOrderId
            
            self.merchantName = merchantName
            
            self.amount = amount
            
            self.expired = expired
            
            self.cancelled = cancelled
            
            self.description = description
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    msg = try container.decode(String.self, forKey: .msg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentTransactionId = try container.decode(String.self, forKey: .paymentTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invalidId = try container.decode(Bool.self, forKey: .invalidId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantName = try container.decode(String.self, forKey: .merchantName)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelled = try container.decode(Bool.self, forKey: .cancelled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(msg, forKey: .msg)
            
            
            
            
            try? container.encodeIfPresent(paymentTransactionId, forKey: .paymentTransactionId)
            
            
            
            
            try? container.encodeIfPresent(invalidId, forKey: .invalidId)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(merchantName, forKey: .merchantName)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(expired, forKey: .expired)
            
            
            
            
            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
}


