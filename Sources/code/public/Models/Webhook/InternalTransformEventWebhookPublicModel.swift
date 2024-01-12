

import Foundation
public extension PublicClient.Webhook {
    /*
        Model: InternalTransformEvent
        Used By: Webhook
    */

    class InternalTransformEvent: Codable {
        
        
        public var traceId: [String]?
        
        public var name: String?
        
        public var type: String?
        
        public var version: String?
        
        public var createdTimestamp: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case traceId = "trace_id"
            
            case name = "name"
            
            case type = "type"
            
            case version = "version"
            
            case createdTimestamp = "created_timestamp"
            
        }

        public init(createdTimestamp: Double? = nil, name: String? = nil, traceId: [String]? = nil, type: String? = nil, version: String? = nil) {
            
            self.traceId = traceId
            
            self.name = name
            
            self.type = type
            
            self.version = version
            
            self.createdTimestamp = createdTimestamp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    traceId = try container.decode([String].self, forKey: .traceId)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    createdTimestamp = try container.decode(Double.self, forKey: .createdTimestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            try? container.encodeIfPresent(createdTimestamp, forKey: .createdTimestamp)
            
            
        }
        
    }
}
