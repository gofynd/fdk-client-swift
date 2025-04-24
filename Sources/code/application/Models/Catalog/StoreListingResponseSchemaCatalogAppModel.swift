

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: StoreListingResponseSchema
        Used By: Catalog
    */
    class StoreListingResponseSchema: Codable {
        
        public var items: [Store]
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [Store], page: Page) {
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            items = try container.decode([Store].self, forKey: .items)
            
            
            
            
            page = try container.decode(Page.self, forKey: .page)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}
