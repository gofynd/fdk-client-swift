

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: DefaultMerchants
        Used By: Billing
    */

    class DefaultMerchants: Codable {
        
        
        public var stripe: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case stripe = "stripe"
            
        }

        public init(stripe: String? = nil) {
            
            self.stripe = stripe
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stripe = try container.decode(String.self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stripe, forKey: .stripe)
            
            
        }
        
    }
}




