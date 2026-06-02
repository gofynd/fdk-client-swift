

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferSchedule
        Used By: Cart
    */

    class OfferSchedule: Codable {
        
        
        public var end: String
        
        public var start: String
        
        public var cron: String?
        
        public var duration: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case end = "end"
            
            case start = "start"
            
            case cron = "cron"
            
            case duration = "duration"
            
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String, start: String) {
            
            self.end = end
            
            self.start = start
            
            self.cron = cron
            
            self.duration = duration
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                end = try container.decode(String.self, forKey: .end)
                
            
            
            
                start = try container.decode(String.self, forKey: .start)
                
            
            
            
                do {
                    cron = try container.decode(String.self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    duration = try container.decode(Int.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
        }
        
    }
}


