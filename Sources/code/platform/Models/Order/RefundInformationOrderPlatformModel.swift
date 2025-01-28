

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundInformation
        Used By: Order
    */

    class RefundInformation: Codable {
        
        
        public var mode: String?
        
        public var amount: Double?
        
        public var merchantTransactionId: String?
        
        public var refundStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case amount = "amount"
            
            case merchantTransactionId = "merchant_transaction_id"
            
            case refundStatus = "refund_status"
            
        }

        public init(amount: Double? = nil, merchantTransactionId: String? = nil, mode: String? = nil, refundStatus: String? = nil) {
            
            self.mode = mode
            
            self.amount = amount
            
            self.merchantTransactionId = merchantTransactionId
            
            self.refundStatus = refundStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
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
                    merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundStatus = try container.decode(String.self, forKey: .refundStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
            
            
            try? container.encodeIfPresent(refundStatus, forKey: .refundStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundInformation
        Used By: Order
    */

    class RefundInformation: Codable {
        
        
        public var mode: String?
        
        public var amount: Double?
        
        public var merchantTransactionId: String?
        
        public var refundStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case amount = "amount"
            
            case merchantTransactionId = "merchant_transaction_id"
            
            case refundStatus = "refund_status"
            
        }

        public init(amount: Double? = nil, merchantTransactionId: String? = nil, mode: String? = nil, refundStatus: String? = nil) {
            
            self.mode = mode
            
            self.amount = amount
            
            self.merchantTransactionId = merchantTransactionId
            
            self.refundStatus = refundStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
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
                    merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundStatus = try container.decode(String.self, forKey: .refundStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
            
            
            try? container.encodeIfPresent(refundStatus, forKey: .refundStatus)
            
            
        }
        
    }
}


