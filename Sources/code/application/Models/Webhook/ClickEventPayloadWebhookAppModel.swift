

import Foundation
public extension ApplicationClient.Webhook {
    /*
        Model: ClickEventPayload
        Used By: Webhook
    */
    class ClickEventPayload: Codable {
        
        public var batch: [ClickEventBatch]?
        
        public var sentAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batch = "batch"
            
            case sentAt = "sent_at"
            
        }

        public init(batch: [ClickEventBatch]? = nil, sentAt: String? = nil) {
            
            self.batch = batch
            
            self.sentAt = sentAt
            
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
            
            
            
            do {
                sentAt = try container.decode(String.self, forKey: .sentAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(batch, forKey: .batch)
            
            
            
            try? container.encodeIfPresent(sentAt, forKey: .sentAt)
            
            
        }
        
    }
}
