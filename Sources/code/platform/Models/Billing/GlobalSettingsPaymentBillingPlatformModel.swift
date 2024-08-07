

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: GlobalSettingsPayment
        Used By: Billing
    */

    class GlobalSettingsPayment: Codable {
        
        
        public var defaultMerchants: DefaultMerchants?
        

        public enum CodingKeys: String, CodingKey {
            
            case defaultMerchants = "default_merchants"
            
        }

        public init(defaultMerchants: DefaultMerchants? = nil) {
            
            self.defaultMerchants = defaultMerchants
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    defaultMerchants = try container.decode(DefaultMerchants.self, forKey: .defaultMerchants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(defaultMerchants, forKey: .defaultMerchants)
            
            
        }
        
    }
}




