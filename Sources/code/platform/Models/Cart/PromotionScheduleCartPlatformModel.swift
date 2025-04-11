

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionSchedule
        Used By: Cart
    */

    class PromotionSchedule: Codable {
        
        
        public var end: String
        
        public var start: String
        
        public var status: String?
        
        public var published: Bool
        
        public var nextSchedule: [NextSchedule]?
        
        public var cron: String?
        
        public var duration: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case end = "end"
            
            case start = "start"
            
            case status = "status"
            
            case published = "published"
            
            case nextSchedule = "next_schedule"
            
            case cron = "cron"
            
            case duration = "duration"
            
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String, nextSchedule: [NextSchedule]? = nil, published: Bool, start: String, status: String? = nil) {
            
            self.end = end
            
            self.start = start
            
            self.status = status
            
            self.published = published
            
            self.nextSchedule = nextSchedule
            
            self.cron = cron
            
            self.duration = duration
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                end = try container.decode(String.self, forKey: .end)
                
            
            
            
                start = try container.decode(String.self, forKey: .start)
                
            
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
            
                do {
                    nextSchedule = try container.decode([NextSchedule].self, forKey: .nextSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
        }
        
    }
}


