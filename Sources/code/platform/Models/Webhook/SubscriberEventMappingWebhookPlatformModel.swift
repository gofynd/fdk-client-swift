

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: SubscriberEventMapping
        Used By: Webhook
    */

    class SubscriberEventMapping: Codable {
        
        
        public var id: Int?
        
        public var eventId: Int?
        
        public var subscriberId: Int?
        
        public var createdOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case eventId = "event_id"
            
            case subscriberId = "subscriber_id"
            
            case createdOn = "created_on"
            
        }

        public init(createdOn: String? = nil, eventId: Int? = nil, id: Int? = nil, subscriberId: Int? = nil) {
            
            self.id = id
            
            self.eventId = eventId
            
            self.subscriberId = subscriberId
            
            self.createdOn = createdOn
            
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
                    eventId = try container.decode(Int.self, forKey: .eventId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriberId = try container.decode(Int.self, forKey: .subscriberId)
                
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
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
        }
        
    }
}




