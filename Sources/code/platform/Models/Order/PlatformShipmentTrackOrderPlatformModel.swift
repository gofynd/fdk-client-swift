

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PlatformShipmentTrack
        Used By: Order
    */

    class PlatformShipmentTrack: Codable {
        
        
        public var meta: [String: Any]?
        
        public var results: [PlatformTrack]?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case results = "results"
            
        }

        public init(meta: [String: Any]? = nil, results: [PlatformTrack]? = nil) {
            
            self.meta = meta
            
            self.results = results
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    results = try container.decode([PlatformTrack].self, forKey: .results)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PlatformShipmentTrack
        Used By: Order
    */

    class PlatformShipmentTrack: Codable {
        
        
        public var meta: [String: Any]?
        
        public var results: [PlatformTrack]?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case results = "results"
            
        }

        public init(meta: [String: Any]? = nil, results: [PlatformTrack]? = nil) {
            
            self.meta = meta
            
            self.results = results
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    results = try container.decode([PlatformTrack].self, forKey: .results)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
        }
        
    }
}


