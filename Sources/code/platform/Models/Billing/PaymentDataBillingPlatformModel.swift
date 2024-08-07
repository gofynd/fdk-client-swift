

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PaymentData
        Used By: Billing
    */

    class PaymentData: Codable {
        
        
        public var transactionId: String?
        
        public var aggregator: String?
        
        public var aggregatorOrderId: String?
        
        public var receiptDate: String?
        
        public var uniqueTransactionReference: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case transactionId = "transaction_id"
            
            case aggregator = "aggregator"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case receiptDate = "receipt_date"
            
            case uniqueTransactionReference = "unique_transaction_reference"
            
        }

        public init(aggregator: String? = nil, aggregatorOrderId: String? = nil, receiptDate: String? = nil, transactionId: String? = nil, uniqueTransactionReference: String? = nil) {
            
            self.transactionId = transactionId
            
            self.aggregator = aggregator
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.receiptDate = receiptDate
            
            self.uniqueTransactionReference = uniqueTransactionReference
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    transactionId = try container.decode(String.self, forKey: .transactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiptDate = try container.decode(String.self, forKey: .receiptDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uniqueTransactionReference = try container.decode(String.self, forKey: .uniqueTransactionReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(receiptDate, forKey: .receiptDate)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransactionReference, forKey: .uniqueTransactionReference)
            
            
        }
        
    }
}




