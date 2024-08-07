

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: ReportFiltersPayload
        Used By: Webhook
    */

    class ReportFiltersPayload: Codable {
        
        
        public var subscriberIds: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case subscriberIds = "subscriber_ids"
            
        }

        public init(subscriberIds: [Int]) {
            
            self.subscriberIds = subscriberIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subscriberIds = try container.decode([Int].self, forKey: .subscriberIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscriberIds, forKey: .subscriberIds)
            
            
        }
        
    }
}




