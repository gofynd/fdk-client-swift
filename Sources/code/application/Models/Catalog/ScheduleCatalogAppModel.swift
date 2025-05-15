

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: Schedule
        Used By: Catalog
    */
    class Schedule: Codable {
        
        public var cron: String?
        
        public var nextSchedule: [NextSchedule]?
        
        public var duration: Int?
        
        public var start: String?
        
        public var end: String?
        
        public var metadata: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case cron = "cron"
            
            case nextSchedule = "next_schedule"
            
            case duration = "duration"
            
            case start = "start"
            
            case end = "end"
            
            case metadata = "metadata"
            
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, metadata: [String: Any]? = nil, nextSchedule: [NextSchedule]? = nil, start: String? = nil) {
            
            self.cron = cron
            
            self.nextSchedule = nextSchedule
            
            self.duration = duration
            
            self.start = start
            
            self.end = end
            
            self.metadata = metadata
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                cron = try container.decode(String.self, forKey: .cron)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                nextSchedule = try container.decode([NextSchedule].self, forKey: .nextSchedule)
            
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
            
            
            
            do {
                metadata = try container.decode([String: Any].self, forKey: .metadata)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
            
            try? container.encodeIfPresent(metadata, forKey: .metadata)
            
            
        }
        
    }
}
