

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: HistoryFilters
        Used By: Webhook
    */

    class HistoryFilters: Codable {
        
        
        public var status: String?
        
        public var endDate: String?
        
        public var startDate: String?
        
        public var subscribers: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case endDate = "end_date"
            
            case startDate = "start_date"
            
            case subscribers = "subscribers"
            
        }

        public init(endDate: String? = nil, startDate: String? = nil, status: String? = nil, subscribers: [Int]? = nil) {
            
            self.status = status
            
            self.endDate = endDate
            
            self.startDate = startDate
            
            self.subscribers = subscribers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(subscribers, forKey: .subscribers)
            
            
        }
        
    }
}




