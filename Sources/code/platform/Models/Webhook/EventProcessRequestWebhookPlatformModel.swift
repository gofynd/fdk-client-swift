

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: EventProcessRequest
        Used By: Webhook
    */

    class EventProcessRequest: Codable {
        
        
        public var searchText: String?
        
        public var endDate: String
        
        public var startDate: String
        
        public var subscriberIds: [Int]?
        
        public var status: String?
        
        public var event: [Event]?
        

        public enum CodingKeys: String, CodingKey {
            
            case searchText = "search_text"
            
            case endDate = "end_date"
            
            case startDate = "start_date"
            
            case subscriberIds = "subscriber_ids"
            
            case status = "status"
            
            case event = "event"
            
        }

        public init(endDate: String, event: [Event]? = nil, searchText: String? = nil, startDate: String, status: String? = nil, subscriberIds: [Int]? = nil) {
            
            self.searchText = searchText
            
            self.endDate = endDate
            
            self.startDate = startDate
            
            self.subscriberIds = subscriberIds
            
            self.status = status
            
            self.event = event
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    searchText = try container.decode(String.self, forKey: .searchText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                endDate = try container.decode(String.self, forKey: .endDate)
                
            
            
            
                startDate = try container.decode(String.self, forKey: .startDate)
                
            
            
            
                do {
                    subscriberIds = try container.decode([Int].self, forKey: .subscriberIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    event = try container.decode([Event].self, forKey: .event)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(searchText, forKey: .searchText)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(subscriberIds, forKey: .subscriberIds)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(event, forKey: .event)
            
            
        }
        
    }
}




