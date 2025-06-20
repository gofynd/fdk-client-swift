

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: RestConfig
        Used By: Webhook
    */

    class RestConfig: Codable {
        
        
        public var webhookUrl: String
        
        public var type: String
        
        public var customHeaders: [String: Any]?
        
        public var authMeta: AuthMeta?
        
        public var events: [RestEventData]
        

        public enum CodingKeys: String, CodingKey {
            
            case webhookUrl = "webhook_url"
            
            case type = "type"
            
            case customHeaders = "custom_headers"
            
            case authMeta = "auth_meta"
            
            case events = "events"
            
        }

        public init(authMeta: AuthMeta? = nil, customHeaders: [String: Any]? = nil, events: [RestEventData], type: String, webhookUrl: String) {
            
            self.webhookUrl = webhookUrl
            
            self.type = type
            
            self.customHeaders = customHeaders
            
            self.authMeta = authMeta
            
            self.events = events
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                events = try container.decode([RestEventData].self, forKey: .events)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
            
            
            
            
            try? container.encodeIfPresent(authMeta, forKey: .authMeta)
            
            
            
            
            try? container.encodeIfPresent(events, forKey: .events)
            
            
        }
        
    }
}




