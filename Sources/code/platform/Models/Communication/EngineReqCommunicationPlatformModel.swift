

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EngineReq
        Used By: Communication
    */

    class EngineReq: Codable {
        
        
        public var payload: SendSyncReq?
        
        public var meta: MetaStructure?
        

        public enum CodingKeys: String, CodingKey {
            
            case payload = "payload"
            
            case meta = "meta"
            
        }

        public init(meta: MetaStructure? = nil, payload: SendSyncReq? = nil) {
            
            self.payload = payload
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    payload = try container.decode(SendSyncReq.self, forKey: .payload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(MetaStructure.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EngineReq
        Used By: Communication
    */

    class EngineReq: Codable {
        
        
        public var payload: SendSyncReq?
        
        public var meta: MetaStructure?
        

        public enum CodingKeys: String, CodingKey {
            
            case payload = "payload"
            
            case meta = "meta"
            
        }

        public init(meta: MetaStructure? = nil, payload: SendSyncReq? = nil) {
            
            self.payload = payload
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    payload = try container.decode(SendSyncReq.self, forKey: .payload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(MetaStructure.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


