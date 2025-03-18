

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: getAppRegionZonesResult
        Used By: Serviceability
    */

    class getAppRegionZonesResult: Codable {
        
        
        public var page: [PageSchema]
        
        public var items: [ListViewItems]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [ListViewItems], page: [PageSchema]) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode([PageSchema].self, forKey: .page)
                
            
            
            
                items = try container.decode([ListViewItems].self, forKey: .items)
                
            
            
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
        Model: getAppRegionZonesResult
        Used By: Serviceability
    */

    class getAppRegionZonesResult: Codable {
        
        
        public var page: [PageSchema]
        
        public var items: [ListViewItems]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [ListViewItems], page: [PageSchema]) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode([PageSchema].self, forKey: .page)
                
            
            
            
                items = try container.decode([ListViewItems].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


