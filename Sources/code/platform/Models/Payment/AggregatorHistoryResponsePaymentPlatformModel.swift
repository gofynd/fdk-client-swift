

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorHistoryResponse
        Used By: Payment
    */

    class AggregatorHistoryResponse: Codable {
        
        
        public var success: Bool?
        
        public var items: [HistoryItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case items = "items"
            
        }

        public init(items: [HistoryItem]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.items = items
            
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
                    items = try container.decode([HistoryItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorHistoryResponse
        Used By: Payment
    */

    class AggregatorHistoryResponse: Codable {
        
        
        public var success: Bool?
        
        public var items: [HistoryItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case items = "items"
            
        }

        public init(items: [HistoryItem]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.items = items
            
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
                    items = try container.decode([HistoryItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


