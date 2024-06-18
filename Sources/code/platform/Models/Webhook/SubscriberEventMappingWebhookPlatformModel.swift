

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: SubscriberEventMapping
        Used By: Webhook
    */

    class SubscriberEventMapping: Codable {
        
        
        public var id: Double?
        
        public var eventId: Double?
        
        public var subscriberId: Double?
        
        public var topic: String?
        
        public var createdOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case eventId = "event_id"
            
            case subscriberId = "subscriber_id"
            
            case topic = "topic"
            
            case createdOn = "created_on"
            
        }

        public init(createdOn: String? = nil, eventId: Double? = nil, id: Double? = nil, subscriberId: Double? = nil, topic: String? = nil) {
            
            self.id = id
            
            self.eventId = eventId
            
            self.subscriberId = subscriberId
            
            self.topic = topic
            
            self.createdOn = createdOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Double.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventId = try container.decode(Double.self, forKey: .eventId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriberId = try container.decode(Double.self, forKey: .subscriberId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    topic = try container.decode(String.self, forKey: .topic)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(eventId, forKey: .eventId)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(topic, forKey: .topic)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
        }
        
    }
}




