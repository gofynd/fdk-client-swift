

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: ChargeRecurring
        Used By: Billing
    */

    class ChargeRecurring: Codable {
        
        
        public var interval: String?
        
        public var intervalTime: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case interval = "interval"
            
            case intervalTime = "interval_time"
            
        }

        public init(interval: String? = nil, intervalTime: Double? = nil) {
            
            self.interval = interval
            
            self.intervalTime = intervalTime
            
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
                
            
            
                do {
                    intervalTime = try container.decode(Double.self, forKey: .intervalTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            
            
            
            try? container.encodeIfPresent(intervalTime, forKey: .intervalTime)
            
            
        }
        
    }
}




