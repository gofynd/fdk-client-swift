

import Foundation
public extension ApplicationClient {
    /*
        Model: ChargeCustomerRequest
        Used By: Payment
    */
    class ChargeCustomerRequest: Codable {
        
        public var aggregator: String
        
        public var amount: Int
        
        public var transactionToken: String?
        
        public var verified: Bool?
        
        public var orderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case amount = "amount"
            
            case transactionToken = "transaction_token"
            
            case verified = "verified"
            
            case orderId = "order_id"
            
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
            
            self.aggregator = aggregator
            
            self.amount = amount
            
            self.transactionToken = transactionToken
            
            self.verified = verified
            
            self.orderId = orderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            
            
            
            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                verified = try container.decode(Bool.self, forKey: .verified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
            
            
            try? container.encode(transactionToken, forKey: .transactionToken)
            
            
            
            
            try? container.encode(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
}
