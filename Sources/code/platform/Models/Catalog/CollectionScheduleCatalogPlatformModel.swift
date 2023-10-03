

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionSchedule
        Used By: Catalog
    */

    class CollectionSchedule: Codable {
        
        
        public var cron: String?
        
        public var duration: Int?
        
        public var end: String?
        
        public var nextSchedule: [NextSchedule]?
        
        public var start: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cron = "cron"
            
            case duration = "duration"
            
            case end = "end"
            
            case nextSchedule = "next_schedule"
            
            case start = "start"
            
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [NextSchedule]? = nil, start: String? = nil) {
            
            self.cron = cron
            
            self.duration = duration
            
            self.end = end
            
            self.nextSchedule = nextSchedule
            
            self.start = start
            
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
                    duration = try container.decode(Int.self, forKey: .duration)
                
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
                    nextSchedule = try container.decode([NextSchedule].self, forKey: .nextSchedule)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(cron, forKey: .cron)
            
            
            
            
            try? container.encode(duration, forKey: .duration)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionSchedule
        Used By: Catalog
    */

    class CollectionSchedule: Codable {
        
        
        public var cron: String?
        
        public var duration: Int?
        
        public var end: String?
        
        public var nextSchedule: [NextSchedule]?
        
        public var start: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cron = "cron"
            
            case duration = "duration"
            
            case end = "end"
            
            case nextSchedule = "next_schedule"
            
            case start = "start"
            
        }

        public init(cron: String? = nil, duration: Int? = nil, end: String? = nil, nextSchedule: [NextSchedule]? = nil, start: String? = nil) {
            
            self.cron = cron
            
            self.duration = duration
            
            self.end = end
            
            self.nextSchedule = nextSchedule
            
            self.start = start
            
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
                    duration = try container.decode(Int.self, forKey: .duration)
                
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
                    nextSchedule = try container.decode([NextSchedule].self, forKey: .nextSchedule)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(cron, forKey: .cron)
            
            
            
            
            try? container.encode(duration, forKey: .duration)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
        }
        
    }
}


