

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PaymentMethodOptions
        Used By: Billing
    */

    class PaymentMethodOptions: Codable {
        
        
        public var card: Card?
        

        public enum CodingKeys: String, CodingKey {
            
            case card = "card"
            
        }

        public init(card: Card? = nil) {
            
            self.card = card
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    card = try container.decode(Card.self, forKey: .card)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(card, forKey: .card)
            
            
        }
        
    }
}




