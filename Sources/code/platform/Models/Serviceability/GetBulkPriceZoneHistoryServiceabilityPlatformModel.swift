

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetBulkPriceZoneHistory
        Used By: Serviceability
    */

    class GetBulkPriceZoneHistory: Codable {
        
        
        public var page: Pagination
        
        public var items: [BulkPriceZoneItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [BulkPriceZoneItem], page: Pagination) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(Pagination.self, forKey: .page)
                
            
            
            
                items = try container.decode([BulkPriceZoneItem].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetBulkPriceZoneHistory
        Used By: Serviceability
    */

    class GetBulkPriceZoneHistory: Codable {
        
        
        public var page: Pagination
        
        public var items: [BulkPriceZoneItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [BulkPriceZoneItem], page: Pagination) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(Pagination.self, forKey: .page)
                
            
            
            
                items = try container.decode([BulkPriceZoneItem].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


