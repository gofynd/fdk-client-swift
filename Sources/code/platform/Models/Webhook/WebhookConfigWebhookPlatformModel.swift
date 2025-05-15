

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: WebhookConfig
        Used By: Webhook
    */

    class WebhookConfig: Codable {
        
        
        public var notificationEmail: String?
        
        public var name: String?
        
        public var status: String?
        
        public var association: Association?
        
        public var eventMap: EventMapBody?
        

        public enum CodingKeys: String, CodingKey {
            
            case notificationEmail = "notification_email"
            
            case name = "name"
            
            case status = "status"
            
            case association = "association"
            
            case eventMap = "event_map"
            
        }

        public init(association: Association? = nil, eventMap: EventMapBody? = nil, name: String? = nil, notificationEmail: String? = nil, status: String? = nil) {
            
            self.notificationEmail = notificationEmail
            
            self.name = name
            
            self.status = status
            
            self.association = association
            
            self.eventMap = eventMap
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    notificationEmail = try container.decode(String.self, forKey: .notificationEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    association = try container.decode(Association.self, forKey: .association)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventMap = try container.decode(EventMapBody.self, forKey: .eventMap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(notificationEmail, forKey: .notificationEmail)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(association, forKey: .association)
            
            
            
            
            try? container.encodeIfPresent(eventMap, forKey: .eventMap)
            
            
        }
        
    }
}




