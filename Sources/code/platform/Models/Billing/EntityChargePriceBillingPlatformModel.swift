

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: EntityChargePrice
        Used By: Billing
    */

    class EntityChargePrice: Codable {
        
        
        public var amount: Double?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: Double? = nil, currencyCode: String? = nil) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
}




