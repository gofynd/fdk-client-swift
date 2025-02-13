

import Foundation
public extension ApplicationClient.Webhook {
    /*
        Model: ClickEventRequest
        Used By: Webhook
    */
    class ClickEventRequest: Codable {
        
        public var batch: [ClickEventBatch]?
        

        public enum CodingKeys: String, CodingKey {
            
            case batch = "batch"
            
        }

        public init(batch: [ClickEventBatch]? = nil) {
            
            self.batch = batch
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                batch = try container.decode([ClickEventBatch].self, forKey: .batch)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(batch, forKey: .batch)
            
            
        }
        
    }
}
