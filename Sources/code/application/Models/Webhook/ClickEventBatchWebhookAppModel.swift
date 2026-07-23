

import Foundation
public extension ApplicationClient.Webhook {
    /*
        Model: ClickEventBatch
        Used By: Webhook
    */
    class ClickEventBatch: Codable {
        
        public var eventName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case eventName = "event_name"
            
        }

        public init(eventName: String? = nil) {
            
            self.eventName = eventName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                eventName = try container.decode(String.self, forKey: .eventName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
        }
        
    }
}
