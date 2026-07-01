

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: BroadcasterConfig
        Used By: Webhook
    */

    class BroadcasterConfig: Codable {
        
        
        public var topic: String?
        
        public var queue: String?
        
        public var eventBridgeName: String?
        
        public var workflowName: String?
        
        public var accountId: String?
        
        public var detailType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case topic = "topic"
            
            case queue = "queue"
            
            case eventBridgeName = "event_bridge_name"
            
            case workflowName = "workflow_name"
            
            case accountId = "account_id"
            
            case detailType = "detail_type"
            
        }

        public init(accountId: String? = nil, detailType: String? = nil, eventBridgeName: String? = nil, queue: String? = nil, topic: String? = nil, workflowName: String? = nil) {
            
            self.topic = topic
            
            self.queue = queue
            
            self.eventBridgeName = eventBridgeName
            
            self.workflowName = workflowName
            
            self.accountId = accountId
            
            self.detailType = detailType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    topic = try container.decode(String.self, forKey: .topic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    queue = try container.decode(String.self, forKey: .queue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventBridgeName = try container.decode(String.self, forKey: .eventBridgeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    workflowName = try container.decode(String.self, forKey: .workflowName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountId = try container.decode(String.self, forKey: .accountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    detailType = try container.decode(String.self, forKey: .detailType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(topic, forKey: .topic)
            
            
            
            
            try? container.encodeIfPresent(queue, forKey: .queue)
            
            
            
            
            try? container.encodeIfPresent(eventBridgeName, forKey: .eventBridgeName)
            
            
            
            
            try? container.encodeIfPresent(workflowName, forKey: .workflowName)
            
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(detailType, forKey: .detailType)
            
            
        }
        
    }
}




