

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: TransactionDetail
        Used By: Payment
    */

    class TransactionDetail: Codable {
        
        
        public var transactionId: String
        
        public var paymentMode: String
        
        public var amount: Double
        
        public var paymentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case transactionId = "transaction_id"
            
            case paymentMode = "payment_mode"
            
            case amount = "amount"
            
            case paymentId = "payment_id"
            
        }

        public init(amount: Double, paymentId: String? = nil, paymentMode: String, transactionId: String) {
            
            self.transactionId = transactionId
            
            self.paymentMode = paymentMode
            
            self.amount = amount
            
            self.paymentId = paymentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transactionId = try container.decode(String.self, forKey: .transactionId)
                
            
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: TransactionDetail
        Used By: Payment
    */

    class TransactionDetail: Codable {
        
        
        public var transactionId: String
        
        public var paymentMode: String
        
        public var amount: Double
        
        public var paymentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case transactionId = "transaction_id"
            
            case paymentMode = "payment_mode"
            
            case amount = "amount"
            
            case paymentId = "payment_id"
            
        }

        public init(amount: Double, paymentId: String? = nil, paymentMode: String, transactionId: String) {
            
            self.transactionId = transactionId
            
            self.paymentMode = paymentMode
            
            self.amount = amount
            
            self.paymentId = paymentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transactionId = try container.decode(String.self, forKey: .transactionId)
                
            
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
        }
        
    }
}


