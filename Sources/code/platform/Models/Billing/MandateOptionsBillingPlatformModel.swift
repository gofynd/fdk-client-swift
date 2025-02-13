

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: MandateOptions
        Used By: Billing
    */

    class MandateOptions: Codable {
        
        
        public var amount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
        }

        public init(amount: Int? = nil) {
            
            self.amount = amount
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}




