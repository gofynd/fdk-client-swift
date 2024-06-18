

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: HistoryFilters
        Used By: Webhook
    */

    class HistoryFilters: Codable {
        
        
        public var events: [String]?
        
        public var searchText: String?
        
        public var status: String?
        
        public var endDate: String?
        
        public var startDate: String?
        
        public var subscribers: [Int]?
        
        public var webhookType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case events = "events"
            
            case searchText = "search_text"
            
            case status = "status"
            
            case endDate = "end_date"
            
            case startDate = "start_date"
            
            case subscribers = "subscribers"
            
            case webhookType = "webhook_type"
            
        }

        public init(endDate: String? = nil, events: [String]? = nil, searchText: String? = nil, startDate: String? = nil, status: String? = nil, subscribers: [Int]? = nil, webhookType: [String]? = nil) {
            
            self.events = events
            
            self.searchText = searchText
            
            self.status = status
            
            self.endDate = endDate
            
            self.startDate = startDate
            
            self.subscribers = subscribers
            
            self.webhookType = webhookType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    events = try container.decode([String].self, forKey: .events)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    searchText = try container.decode(String.self, forKey: .searchText)
                
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
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscribers = try container.decode([Int].self, forKey: .subscribers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    webhookType = try container.decode([String].self, forKey: .webhookType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(events, forKey: .events)
            
            
            
            
            try? container.encodeIfPresent(searchText, forKey: .searchText)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(subscribers, forKey: .subscribers)
            
            
            
            
            try? container.encodeIfPresent(webhookType, forKey: .webhookType)
            
            
        }
        
    }
}




