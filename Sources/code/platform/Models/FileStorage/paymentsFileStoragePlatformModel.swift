

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: payments
        Used By: FileStorage
    */

    class payments: Codable {
        
        
        public var paymentType: String?
        
        public var date: String?
        
        public var transactionId: String?
        
        public var amount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentType = "payment_type"
            
            case date = "date"
            
            case transactionId = "transaction_id"
            
            case amount = "amount"
            
        }

        public init(amount: Double? = nil, date: String? = nil, paymentType: String? = nil, transactionId: String? = nil) {
            
            self.paymentType = paymentType
            
            self.date = date
            
            self.transactionId = transactionId
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentType = try container.decode(String.self, forKey: .paymentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    date = try container.decode(String.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionId = try container.decode(String.self, forKey: .transactionId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentType, forKey: .paymentType)
            
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: payments
        Used By: FileStorage
    */

    class payments: Codable {
        
        
        public var paymentType: String?
        
        public var date: String?
        
        public var transactionId: String?
        
        public var amount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentType = "payment_type"
            
            case date = "date"
            
            case transactionId = "transaction_id"
            
            case amount = "amount"
            
        }

        public init(amount: Double? = nil, date: String? = nil, paymentType: String? = nil, transactionId: String? = nil) {
            
            self.paymentType = paymentType
            
            self.date = date
            
            self.transactionId = transactionId
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentType = try container.decode(String.self, forKey: .paymentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    date = try container.decode(String.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionId = try container.decode(String.self, forKey: .transactionId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentType, forKey: .paymentType)
            
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}


