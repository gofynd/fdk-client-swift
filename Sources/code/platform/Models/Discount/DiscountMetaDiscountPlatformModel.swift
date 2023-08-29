

import Foundation


public extension PlatformClient.Discount {
    /*
        Model: DiscountMeta
        Used By: Discount
    */

    class DiscountMeta: Codable {
        
        
        public var timer: Bool
        
        public var hours: Double?
        
        public var minutes: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case timer = "timer"
            
            case hours = "hours"
            
            case minutes = "minutes"
            
        }

        public init(hours: Double? = nil, minutes: Double? = nil, timer: Bool) {
            
            self.timer = timer
            
            self.hours = hours
            
            self.minutes = minutes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                timer = try container.decode(Bool.self, forKey: .timer)
                
            
            
            
                do {
                    hours = try container.decode(Double.self, forKey: .hours)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minutes = try container.decode(Double.self, forKey: .minutes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(timer, forKey: .timer)
            
            
            
            
            try? container.encodeIfPresent(hours, forKey: .hours)
            
            
            
            
            try? container.encodeIfPresent(minutes, forKey: .minutes)
            
            
        }
        
    }
}




