

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: UserCreditSchema
        Used By: Payment
    */
    class UserCreditSchema: Codable {
        
        public var amount: Double
        
        public var currency: String
        
        public var uniqueId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currency = "currency"
            
            case uniqueId = "unique_id"
            
        }

        public init(amount: Double, currency: String, uniqueId: String? = nil) {
            
            self.amount = amount
            
            self.currency = currency
            
            self.uniqueId = uniqueId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            amount = try container.decode(Double.self, forKey: .amount)
            
            
            
            
            currency = try container.decode(String.self, forKey: .currency)
            
            
            
            
            do {
                uniqueId = try container.decode(String.self, forKey: .uniqueId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
        }
        
    }
}
