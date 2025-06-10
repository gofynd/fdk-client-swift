

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: KafkaConfig
        Used By: Webhook
    */

    class KafkaConfig: Codable {
        
        
        public var type: String?
        
        public var events: [QueueEventData]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case events = "events"
            
        }

        public init(events: [QueueEventData], type: String? = nil) {
            
            self.type = type
            
            self.events = events
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                events = try container.decode([QueueEventData].self, forKey: .events)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(events, forKey: .events)
            
            
        }
        
    }
}




