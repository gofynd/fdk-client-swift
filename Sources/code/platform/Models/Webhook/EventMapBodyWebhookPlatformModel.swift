

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: EventMapBody
        Used By: Webhook
    */

    class EventMapBody: Codable {
        
        
        public var rest: RestConfig?
        
        public var kafka: KafkaConfig?
        
        public var pubSub: PubSubConfig?
        
        public var temporal: TemporalConfig?
        
        public var sqs: SqsConfig?
        
        public var eventBridge: EventBridgeConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case rest = "rest"
            
            case kafka = "kafka"
            
            case pubSub = "pub_sub"
            
            case temporal = "temporal"
            
            case sqs = "sqs"
            
            case eventBridge = "event_bridge"
            
        }

        public init(eventBridge: EventBridgeConfig? = nil, kafka: KafkaConfig? = nil, pubSub: PubSubConfig? = nil, rest: RestConfig? = nil, sqs: SqsConfig? = nil, temporal: TemporalConfig? = nil) {
            
            self.rest = rest
            
            self.kafka = kafka
            
            self.pubSub = pubSub
            
            self.temporal = temporal
            
            self.sqs = sqs
            
            self.eventBridge = eventBridge
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    rest = try container.decode(RestConfig.self, forKey: .rest)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    kafka = try container.decode(KafkaConfig.self, forKey: .kafka)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pubSub = try container.decode(PubSubConfig.self, forKey: .pubSub)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    temporal = try container.decode(TemporalConfig.self, forKey: .temporal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sqs = try container.decode(SqsConfig.self, forKey: .sqs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventBridge = try container.decode(EventBridgeConfig.self, forKey: .eventBridge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rest, forKey: .rest)
            
            
            
            
            try? container.encodeIfPresent(kafka, forKey: .kafka)
            
            
            
            
            try? container.encodeIfPresent(pubSub, forKey: .pubSub)
            
            
            
            
            try? container.encodeIfPresent(temporal, forKey: .temporal)
            
            
            
            
            try? container.encodeIfPresent(sqs, forKey: .sqs)
            
            
            
            
            try? container.encodeIfPresent(eventBridge, forKey: .eventBridge)
            
            
        }
        
    }
}




