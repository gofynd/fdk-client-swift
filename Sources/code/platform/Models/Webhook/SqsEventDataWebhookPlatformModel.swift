

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: SqsEventData
        Used By: Webhook
    */

    class SqsEventData: Codable {
        
        
        public var eventCategory: String
        
        public var eventName: String
        
        public var eventType: String
        
        public var version: Double
        
        public var queue: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case eventCategory = "event_category"
            
            case eventName = "event_name"
            
            case eventType = "event_type"
            
            case version = "version"
            
            case queue = "queue"
            
        }

        public init(eventCategory: String, eventName: String, eventType: String, queue: String? = nil, version: Double) {
            
            self.eventCategory = eventCategory
            
            self.eventName = eventName
            
            self.eventType = eventType
            
            self.version = version
            
            self.queue = queue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                eventCategory = try container.decode(String.self, forKey: .eventCategory)
                
            
            
            
                eventName = try container.decode(String.self, forKey: .eventName)
                
            
            
            
                eventType = try container.decode(String.self, forKey: .eventType)
                
            
            
            
                version = try container.decode(Double.self, forKey: .version)
                
            
            
            
                do {
                    queue = try container.decode(String.self, forKey: .queue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)
            
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(queue, forKey: .queue)
            
            
        }
        
    }
}




