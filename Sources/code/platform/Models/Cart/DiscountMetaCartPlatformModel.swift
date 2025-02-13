

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: DiscountMeta
        Used By: Cart
    */

    class DiscountMeta: Codable {
        
        
        public var timer: Bool?
        
        public var startTimerInMinutes: Double?
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case timer = "timer"
            
            case startTimerInMinutes = "start_timer_in_minutes"
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(end: String? = nil, start: String? = nil, startTimerInMinutes: Double? = nil, timer: Bool? = nil) {
            
            self.timer = timer
            
            self.startTimerInMinutes = startTimerInMinutes
            
            self.start = start
            
            self.end = end
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    timer = try container.decode(Bool.self, forKey: .timer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startTimerInMinutes = try container.decode(Double.self, forKey: .startTimerInMinutes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(timer, forKey: .timer)
            
            
            
            
            try? container.encodeIfPresent(startTimerInMinutes, forKey: .startTimerInMinutes)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
}


