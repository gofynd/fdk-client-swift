

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentTrack
        Used By: Order
    */
    class ShipmentTrack: Codable {
        
        public var success: Bool?
        
        public var meta: [String: Any]?
        
        public var results: [Track]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case meta = "meta"
            
            case results = "results"
            
        }

        public init(meta: [String: Any]? = nil, results: [Track]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.meta = meta
            
            self.results = results
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                results = try container.decode([Track].self, forKey: .results)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
        }
        
    }
}
