

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ChargeCustomer
        Used By: Payment
    */
    class ChargeCustomer: Codable {
        
        public var verified: Bool?
        
        public var aggregator: String
        
        public var orderId: String?
        
        public var transactionToken: String?
        
        public var amount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case aggregator = "aggregator"
            
            case orderId = "order_id"
            
            case transactionToken = "transaction_token"
            
            case amount = "amount"
            
        }

        public init(aggregator: String, amount: Int, orderId: String? = nil, transactionToken: String? = nil, verified: Bool? = nil) {
            
            self.verified = verified
            
            self.aggregator = aggregator
            
            self.orderId = orderId
            
            self.transactionToken = transactionToken
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                verified = try container.decode(Bool.self, forKey: .verified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}
