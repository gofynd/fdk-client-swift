

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: EntityChargeRecurring
        Used By: Billing
    */

    class EntityChargeRecurring: Codable {
        
        
        public var interval: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case interval = "interval"
            
        }

        public init(interval: String? = nil) {
            
            self.interval = interval
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    interval = try container.decode(String.self, forKey: .interval)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            
        }
        
    }
}




