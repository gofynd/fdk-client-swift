

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetLocalitiesBulkHistory
        Used By: Serviceability
    */

    class GetLocalitiesBulkHistory: Codable {
        
        
        public var page: Page
        
        public var items: [HistoryObject]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [HistoryObject], page: Page) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                items = try container.decode([HistoryObject].self, forKey: .items)
                
            
            
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
        Model: GetLocalitiesBulkHistory
        Used By: Serviceability
    */

    class GetLocalitiesBulkHistory: Codable {
        
        
        public var page: Page
        
        public var items: [HistoryObject]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [HistoryObject], page: Page) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                items = try container.decode([HistoryObject].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


