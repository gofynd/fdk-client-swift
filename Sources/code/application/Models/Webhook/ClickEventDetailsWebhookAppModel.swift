

import Foundation
public extension ApplicationClient.Webhook {
    /*
        Model: ClickEventDetails
        Used By: Webhook
    */
    class ClickEventDetails: Codable {
        
        public var successCount: Int?
        
        public var failedCount: Int?
        
        public var failedEvents: [ClickEventBatch]?
        

        public enum CodingKeys: String, CodingKey {
            
            case successCount = "success_count"
            
            case failedCount = "failed_count"
            
            case failedEvents = "failed_events"
            
        }

        public init(failedCount: Int? = nil, failedEvents: [ClickEventBatch]? = nil, successCount: Int? = nil) {
            
            self.successCount = successCount
            
            self.failedCount = failedCount
            
            self.failedEvents = failedEvents
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                successCount = try container.decode(Int.self, forKey: .successCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                failedCount = try container.decode(Int.self, forKey: .failedCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                failedEvents = try container.decode([ClickEventBatch].self, forKey: .failedEvents)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(successCount, forKey: .successCount)
            
            
            
            try? container.encodeIfPresent(failedCount, forKey: .failedCount)
            
            
            
            try? container.encodeIfPresent(failedEvents, forKey: .failedEvents)
            
            
        }
        
    }
}
