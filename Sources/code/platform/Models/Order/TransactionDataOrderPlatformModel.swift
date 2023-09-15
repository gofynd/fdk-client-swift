

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TransactionData
        Used By: Order
    */

    class TransactionData: Codable {
        
        
        public var currency: String?
        
        public var amountPaid: Double?
        
        public var paymentId: String?
        
        public var uniqueReferenceNumber: String?
        
        public var terminalId: String?
        
        public var entity: String?
        
        public var transactionId: String?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case amountPaid = "amount_paid"
            
            case paymentId = "payment_id"
            
            case uniqueReferenceNumber = "unique_reference_number"
            
            case terminalId = "terminal_id"
            
            case entity = "entity"
            
            case transactionId = "transaction_id"
            
            case status = "status"
            
        }

        public init(amountPaid: Double? = nil, currency: String? = nil, entity: String? = nil, paymentId: String? = nil, status: String? = nil, terminalId: String? = nil, transactionId: String? = nil, uniqueReferenceNumber: String? = nil) {
            
            self.currency = currency
            
            self.amountPaid = amountPaid
            
            self.paymentId = paymentId
            
            self.uniqueReferenceNumber = uniqueReferenceNumber
            
            self.terminalId = terminalId
            
            self.entity = entity
            
            self.transactionId = transactionId
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uniqueReferenceNumber = try container.decode(String.self, forKey: .uniqueReferenceNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    terminalId = try container.decode(String.self, forKey: .terminalId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entity = try container.decode(String.self, forKey: .entity)
                
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
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(currency, forKey: .currency)
            
            
            
            
            try? container.encode(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encode(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encode(uniqueReferenceNumber, forKey: .uniqueReferenceNumber)
            
            
            
            
            try? container.encode(terminalId, forKey: .terminalId)
            
            
            
            
            try? container.encode(entity, forKey: .entity)
            
            
            
            
            try? container.encode(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encode(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TransactionData
        Used By: Order
    */

    class TransactionData: Codable {
        
        
        public var currency: String?
        
        public var amountPaid: Double?
        
        public var paymentId: String?
        
        public var uniqueReferenceNumber: String?
        
        public var terminalId: String?
        
        public var entity: String?
        
        public var transactionId: String?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case amountPaid = "amount_paid"
            
            case paymentId = "payment_id"
            
            case uniqueReferenceNumber = "unique_reference_number"
            
            case terminalId = "terminal_id"
            
            case entity = "entity"
            
            case transactionId = "transaction_id"
            
            case status = "status"
            
        }

        public init(amountPaid: Double? = nil, currency: String? = nil, entity: String? = nil, paymentId: String? = nil, status: String? = nil, terminalId: String? = nil, transactionId: String? = nil, uniqueReferenceNumber: String? = nil) {
            
            self.currency = currency
            
            self.amountPaid = amountPaid
            
            self.paymentId = paymentId
            
            self.uniqueReferenceNumber = uniqueReferenceNumber
            
            self.terminalId = terminalId
            
            self.entity = entity
            
            self.transactionId = transactionId
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uniqueReferenceNumber = try container.decode(String.self, forKey: .uniqueReferenceNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    terminalId = try container.decode(String.self, forKey: .terminalId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entity = try container.decode(String.self, forKey: .entity)
                
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
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(currency, forKey: .currency)
            
            
            
            
            try? container.encode(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encode(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encode(uniqueReferenceNumber, forKey: .uniqueReferenceNumber)
            
            
            
            
            try? container.encode(terminalId, forKey: .terminalId)
            
            
            
            
            try? container.encode(entity, forKey: .entity)
            
            
            
            
            try? container.encode(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encode(status, forKey: .status)
            
            
        }
        
    }
}


