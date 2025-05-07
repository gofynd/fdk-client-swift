

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkRegionResponseSchema
        Used By: Serviceability
    */

    class BulkRegionResponseSchema: Codable {
        
        
        public var items: [BulkRegionResponseItemData]
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [BulkRegionResponseItemData], page: Page) {
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([BulkRegionResponseItemData].self, forKey: .items)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkRegionResponseSchema
        Used By: Serviceability
    */

    class BulkRegionResponseSchema: Codable {
        
        
        public var items: [BulkRegionResponseItemData]
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [BulkRegionResponseItemData], page: Page) {
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([BulkRegionResponseItemData].self, forKey: .items)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


