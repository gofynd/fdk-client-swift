

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
        
        public var filters: FilterSchema?
        
        public var reducer: [String: Any]?
        
        public var broadcasterConfig: BroadcasterConfig?
        
        public var createdOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case eventId = "event_id"
            
            case subscriberId = "subscriber_id"
            
            case filters = "filters"
            
            case reducer = "reducer"
            
            case broadcasterConfig = "broadcaster_config"
            
            case createdOn = "created_on"
            
        }

        public init(broadcasterConfig: BroadcasterConfig? = nil, createdOn: String? = nil, eventId: Double? = nil, filters: FilterSchema? = nil, id: Double? = nil, reducer: [String: Any]? = nil, subscriberId: Double? = nil) {
            
            self.id = id
            
            self.eventId = eventId
            
            self.subscriberId = subscriberId
            
            self.filters = filters
            
            self.reducer = reducer
            
            self.broadcasterConfig = broadcasterConfig
            
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
                    filters = try container.decode(FilterSchema.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reducer = try container.decode([String: Any].self, forKey: .reducer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    broadcasterConfig = try container.decode(BroadcasterConfig.self, forKey: .broadcasterConfig)
                
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
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(reducer, forKey: .reducer)
            
            
            
            
            try? container.encodeIfPresent(broadcasterConfig, forKey: .broadcasterConfig)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
        }
        
    }
}




