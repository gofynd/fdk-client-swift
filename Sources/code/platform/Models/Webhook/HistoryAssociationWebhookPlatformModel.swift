

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: HistoryAssociation
        Used By: Webhook
    */

    class HistoryAssociation: Codable {
        
        
        public var companyId: Int?
        
        public var subscriberIds: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case subscriberIds = "subscriber_ids"
            
        }

        public init(companyId: Int? = nil, subscriberIds: [Int]? = nil) {
            
            self.companyId = companyId
            
            self.subscriberIds = subscriberIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriberIds = try container.decode([Int].self, forKey: .subscriberIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(subscriberIds, forKey: .subscriberIds)
            
            
        }
        
    }
}




