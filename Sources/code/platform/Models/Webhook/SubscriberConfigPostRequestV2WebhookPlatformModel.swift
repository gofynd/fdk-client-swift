

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: SubscriberConfigPostRequestV2
        Used By: Webhook
    */

    class SubscriberConfigPostRequestV2: Codable {
        
        
        public var name: String
        
        public var type: String?
        
        public var webhookUrl: String?
        
        public var provider: String
        
        public var association: Association
        
        public var customHeaders: [String: Any]?
        
        public var status: SubscriberStatus
        
        public var emailId: String
        
        public var authMeta: AuthMeta?
        
        public var events: [Events]
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case type = "type"
            
            case webhookUrl = "webhook_url"
            
            case provider = "provider"
            
            case association = "association"
            
            case customHeaders = "custom_headers"
            
            case status = "status"
            
            case emailId = "email_id"
            
            case authMeta = "auth_meta"
            
            case events = "events"
            
        }

        public init(association: Association, authMeta: AuthMeta? = nil, customHeaders: [String: Any]? = nil, emailId: String, events: [Events], name: String, provider: String, status: SubscriberStatus, type: String? = nil, webhookUrl: String? = nil) {
            
            self.name = name
            
            self.type = type
            
            self.webhookUrl = webhookUrl
            
            self.provider = provider
            
            self.association = association
            
            self.customHeaders = customHeaders
            
            self.status = status
            
            self.emailId = emailId
            
            self.authMeta = authMeta
            
            self.events = events
            
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
                
            
            
                do {
                    webhookUrl = try container.decode(String.self, forKey: .webhookUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                provider = try container.decode(String.self, forKey: .provider)
                
            
            
            
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
                
            
            
                events = try container.decode([Events].self, forKey: .events)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(association, forKey: .association)
            
            
            
            
            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(authMeta, forKey: .authMeta)
            
            
            
            
            try? container.encodeIfPresent(events, forKey: .events)
            
            
        }
        
    }
}




