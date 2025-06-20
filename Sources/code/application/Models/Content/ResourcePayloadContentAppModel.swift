

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: ResourcePayload
        Used By: Content
    */
    class ResourcePayload: Codable {
        
        public var payload: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case payload = "payload"
            
        }

        public init(payload: [[String: Any]]? = nil) {
            
            self.payload = payload
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                payload = try container.decode([[String: Any]].self, forKey: .payload)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
        }
        
    }
}
