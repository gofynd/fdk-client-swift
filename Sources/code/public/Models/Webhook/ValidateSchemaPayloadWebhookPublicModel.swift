

import Foundation
public extension PublicClient.Webhook {
    /*
        Model: ValidateSchemaPayload
        Used By: Webhook
    */

    class ValidateSchemaPayload: Codable {
        
        
        public var eventName: String
        
        public var eventType: String
        
        public var eventCategory: String
        
        public var eventVersion: String
        
        public var event: EventSchema
        
        public var eventSchema: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case eventName = "event_name"
            
            case eventType = "event_type"
            
            case eventCategory = "event_category"
            
            case eventVersion = "event_version"
            
            case event = "event"
            
            case eventSchema = "event_schema"
            
        }

        public init(event: EventSchema, eventCategory: String, eventName: String, eventSchema: [String: Any], eventType: String, eventVersion: String) {
            
            self.eventName = eventName
            
            self.eventType = eventType
            
            self.eventCategory = eventCategory
            
            self.eventVersion = eventVersion
            
            self.event = event
            
            self.eventSchema = eventSchema
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                eventName = try container.decode(String.self, forKey: .eventName)
                
            
            
            
                eventType = try container.decode(String.self, forKey: .eventType)
                
            
            
            
                eventCategory = try container.decode(String.self, forKey: .eventCategory)
                
            
            
            
                eventVersion = try container.decode(String.self, forKey: .eventVersion)
                
            
            
            
                event = try container.decode(EventSchema.self, forKey: .event)
                
            
            
            
                eventSchema = try container.decode([String: Any].self, forKey: .eventSchema)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)
            
            
            
            try? container.encodeIfPresent(eventVersion, forKey: .eventVersion)
            
            
            
            try? container.encodeIfPresent(event, forKey: .event)
            
            
            
            try? container.encodeIfPresent(eventSchema, forKey: .eventSchema)
            
            
        }
        
    }
}
