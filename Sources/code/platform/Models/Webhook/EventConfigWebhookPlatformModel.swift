

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: EventConfig
        Used By: Webhook
    */

    class EventConfig: Codable {
        
        
        public var id: Int?
        
        public var type: String?
        
        public var eventName: String?
        
        public var eventType: String?
        
        public var eventCategory: String?
        
        public var modifiedBy: String?
        
        public var subscriberEventMapping: SubscriberEventMapping?
        
        public var eventSchema: [String: Any]?
        
        public var group: String?
        
        public var version: String?
        
        public var displayName: String?
        
        public var description: String?
        
        public var createdOn: String?
        
        public var updatedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case type = "type"
            
            case eventName = "event_name"
            
            case eventType = "event_type"
            
            case eventCategory = "event_category"
            
            case modifiedBy = "modified_by"
            
            case subscriberEventMapping = "subscriber_event_mapping"
            
            case eventSchema = "event_schema"
            
            case group = "group"
            
            case version = "version"
            
            case displayName = "display_name"
            
            case description = "description"
            
            case createdOn = "created_on"
            
            case updatedOn = "updated_on"
            
        }

        public init(createdOn: String? = nil, description: String? = nil, displayName: String? = nil, eventCategory: String? = nil, eventName: String? = nil, eventSchema: [String: Any]? = nil, eventType: String? = nil, group: String? = nil, id: Int? = nil, modifiedBy: String? = nil, subscriberEventMapping: SubscriberEventMapping? = nil, type: String? = nil, updatedOn: String? = nil, version: String? = nil) {
            
            self.id = id
            
            self.type = type
            
            self.eventName = eventName
            
            self.eventType = eventType
            
            self.eventCategory = eventCategory
            
            self.modifiedBy = modifiedBy
            
            self.subscriberEventMapping = subscriberEventMapping
            
            self.eventSchema = eventSchema
            
            self.group = group
            
            self.version = version
            
            self.displayName = displayName
            
            self.description = description
            
            self.createdOn = createdOn
            
            self.updatedOn = updatedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventName = try container.decode(String.self, forKey: .eventName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventType = try container.decode(String.self, forKey: .eventType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventCategory = try container.decode(String.self, forKey: .eventCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriberEventMapping = try container.decode(SubscriberEventMapping.self, forKey: .subscriberEventMapping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventSchema = try container.decode([String: Any].self, forKey: .eventSchema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    group = try container.decode(String.self, forKey: .group)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedOn = try container.decode(String.self, forKey: .updatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            
            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(subscriberEventMapping, forKey: .subscriberEventMapping)
            
            
            
            
            try? container.encodeIfPresent(eventSchema, forKey: .eventSchema)
            
            
            
            
            try? container.encodeIfPresent(group, forKey: .group)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
        }
        
    }
}




