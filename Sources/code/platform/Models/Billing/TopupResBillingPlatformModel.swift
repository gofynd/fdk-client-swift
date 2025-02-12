

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: TopupRes
        Used By: Billing
    */

    class TopupRes: Codable {
        
        
        public var status: String?
        
        public var aggregatorOrderId: String?
        
        public var amount: Double?
        
        public var currency: String?
        
        public var transactionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case amount = "amount"
            
            case currency = "currency"
            
            case transactionId = "transaction_id"
            
        }

        public init(aggregatorOrderId: String? = nil, amount: Double? = nil, currency: String? = nil, status: String? = nil, transactionId: String? = nil) {
            
            self.status = status
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.amount = amount
            
            self.currency = currency
            
            self.transactionId = transactionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
        }
        
    }
}




