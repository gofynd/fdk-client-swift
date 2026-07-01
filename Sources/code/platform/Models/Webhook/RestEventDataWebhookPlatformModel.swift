

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: RestEventData
        Used By: Webhook
    */

    class RestEventData: Codable {
        
        
        public var eventCategory: String
        
        public var eventName: String
        
        public var eventType: String
        
        public var version: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case eventCategory = "event_category"
            
            case eventName = "event_name"
            
            case eventType = "event_type"
            
            case version = "version"
            
        }

        public init(eventCategory: String, eventName: String, eventType: String, version: Double) {
            
            self.eventCategory = eventCategory
            
            self.eventName = eventName
            
            self.eventType = eventType
            
            self.version = version
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                eventCategory = try container.decode(String.self, forKey: .eventCategory)
                
            
            
            
                eventName = try container.decode(String.self, forKey: .eventName)
                
            
            
            
                eventType = try container.decode(String.self, forKey: .eventType)
                
            
            
            
                version = try container.decode(Double.self, forKey: .version)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)
            
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
        }
        
    }
}




