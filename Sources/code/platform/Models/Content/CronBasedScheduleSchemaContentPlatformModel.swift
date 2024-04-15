

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CronBasedScheduleSchema
        Used By: Content
    */

    class CronBasedScheduleSchema: Codable {
        
        
        public var enabled: Bool?
        
        public var cron: String?
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case cron = "cron"
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(cron: String? = nil, enabled: Bool? = nil, end: String? = nil, start: String? = nil) {
            
            self.enabled = enabled
            
            self.cron = cron
            
            self.start = start
            
            self.end = end
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
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
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CronBasedScheduleSchema
        Used By: Content
    */

    class CronBasedScheduleSchema: Codable {
        
        
        public var enabled: Bool?
        
        public var cron: String?
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case cron = "cron"
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(cron: String? = nil, enabled: Bool? = nil, end: String? = nil, start: String? = nil) {
            
            self.enabled = enabled
            
            self.cron = cron
            
            self.start = start
            
            self.end = end
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
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
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
}


