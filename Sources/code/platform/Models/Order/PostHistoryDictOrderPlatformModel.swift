

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PostHistoryDict
        Used By: Order
    */

    class PostHistoryDict: Codable {
        
        
        public var filters: [PostHistoryFilters]
        
        public var data: PostHistoryData
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case data = "data"
            
        }

        public init(data: PostHistoryData, filters: [PostHistoryFilters]) {
            
            self.filters = filters
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filters = try container.decode([PostHistoryFilters].self, forKey: .filters)
                
            
            
            
                data = try container.decode(PostHistoryData.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PostHistoryDict
        Used By: Order
    */

    class PostHistoryDict: Codable {
        
        
        public var filters: [PostHistoryFilters]
        
        public var data: PostHistoryData
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case data = "data"
            
        }

        public init(data: PostHistoryData, filters: [PostHistoryFilters]) {
            
            self.filters = filters
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filters = try container.decode([PostHistoryFilters].self, forKey: .filters)
                
            
            
            
                data = try container.decode(PostHistoryData.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


