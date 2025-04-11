

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ListViewResponseSchemaV2
        Used By: Logistic
    */
    class ListViewResponseSchemaV2: Codable {
        
        public var items: [ListViewItemsV2]
        
        public var page: ZoneDataItem
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [ListViewItemsV2], page: ZoneDataItem) {
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            items = try container.decode([ListViewItemsV2].self, forKey: .items)
            
            
            
            
            page = try container.decode(ZoneDataItem.self, forKey: .page)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}
