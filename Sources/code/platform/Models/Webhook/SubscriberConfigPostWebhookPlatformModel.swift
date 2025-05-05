

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: SubscriberConfigPost
        Used By: Webhook
    */

    class SubscriberConfigPost: Codable {
        
        
        public var name: String
        
        public var type: String?
        
        public var webhookUrl: String
        
        public var association: Association
        
        public var customHeaders: [String: Any]?
        
        public var status: SubscriberStatus
        
        public var emailId: String
        
        public var authMeta: AuthMeta?
        
        public var eventId: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case type = "type"
            
            case webhookUrl = "webhook_url"
            
            case association = "association"
            
            case customHeaders = "custom_headers"
            
            case status = "status"
            
            case emailId = "email_id"
            
            case authMeta = "auth_meta"
            
            case eventId = "event_id"
            
        }

        public init(association: Association, authMeta: AuthMeta? = nil, customHeaders: [String: Any]? = nil, emailId: String, eventId: [Int], name: String, status: SubscriberStatus, type: String? = nil, webhookUrl: String) {
            
            self.name = name
            
            self.type = type
            
            self.webhookUrl = webhookUrl
            
            self.association = association
            
            self.customHeaders = customHeaders
            
            self.status = status
            
            self.emailId = emailId
            
            self.authMeta = authMeta
            
            self.eventId = eventId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)
                
            
            
            
                association = try container.decode(Association.self, forKey: .association)
                
            
            
            
                do {
                    customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(SubscriberStatus.self, forKey: .status)
                
            
            
            
                emailId = try container.decode(String.self, forKey: .emailId)
                
            
            
            
                do {
                    authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                eventId = try container.decode([Int].self, forKey: .eventId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)
            
            
            
            
            try? container.encodeIfPresent(association, forKey: .association)
            
            
            
            
            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(authMeta, forKey: .authMeta)
            
            
            
            
            try? container.encodeIfPresent(eventId, forKey: .eventId)
            
            
        }
        
    }
}




