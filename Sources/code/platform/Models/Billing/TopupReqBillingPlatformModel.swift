

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: TopupReq
        Used By: Billing
    */

    class TopupReq: Codable {
        
        
        public var amount: Int?
        
        public var currency: String?
        
        public var providerType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currency = "currency"
            
            case providerType = "provider_type"
            
        }

        public init(amount: Int? = nil, currency: String? = nil, providerType: String? = nil) {
            
            self.amount = amount
            
            self.currency = currency
            
            self.providerType = providerType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
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
                    providerType = try container.decode(String.self, forKey: .providerType)
                
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
            
            
            
            
            try? container.encodeIfPresent(providerType, forKey: .providerType)
            
            
        }
        
    }
}




