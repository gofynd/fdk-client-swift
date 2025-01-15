

import Foundation
public extension PublicClient.Webhook {
    /*
        Model: TransformEventResult
        Used By: Webhook
    */

    class TransformEventResult: Codable {
        
        
        public var eventTraceId: [String]?
        
        public var data: TransformEventData?
        
        public var eventName: String?
        
        public var version: String?
        
        public var status: Bool?
        
        public var eventType: String?
        
        public var serviceMeta: TransformEventServiceMeta?
        
        public var association: TransformEventAssociation?
        

        public enum CodingKeys: String, CodingKey {
            
            case eventTraceId = "event_trace_id"
            
            case data = "data"
            
            case eventName = "event_name"
            
            case version = "version"
            
            case status = "status"
            
            case eventType = "event_type"
            
            case serviceMeta = "service_meta"
            
            case association = "association"
            
        }

        public init(association: TransformEventAssociation? = nil, data: TransformEventData? = nil, eventName: String? = nil, eventTraceId: [String]? = nil, eventType: String? = nil, serviceMeta: TransformEventServiceMeta? = nil, status: Bool? = nil, version: String? = nil) {
            
            self.eventTraceId = eventTraceId
            
            self.data = data
            
            self.eventName = eventName
            
            self.version = version
            
            self.status = status
            
            self.eventType = eventType
            
            self.serviceMeta = serviceMeta
            
            self.association = association
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    eventTraceId = try container.decode([String].self, forKey: .eventTraceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(TransformEventData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventName = try container.decode(String.self, forKey: .eventName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventType = try container.decode(String.self, forKey: .eventType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    serviceMeta = try container.decode(TransformEventServiceMeta.self, forKey: .serviceMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    association = try container.decode(TransformEventAssociation.self, forKey: .association)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(eventTraceId, forKey: .eventTraceId)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            try? container.encodeIfPresent(serviceMeta, forKey: .serviceMeta)
            
            
            
            try? container.encodeIfPresent(association, forKey: .association)
            
            
        }
        
    }
}
