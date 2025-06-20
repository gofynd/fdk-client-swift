

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: UpsertSubscriberConfig
        Used By: Webhook
    */

    class UpsertSubscriberConfig: Codable {
        
        
        public var webhookConfig: WebhookConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case webhookConfig = "webhook_config"
            
        }

        public init(webhookConfig: WebhookConfig) {
            
            self.webhookConfig = webhookConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                webhookConfig = try container.decode(WebhookConfig.self, forKey: .webhookConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(webhookConfig, forKey: .webhookConfig)
            
            
        }
        
    }
}




