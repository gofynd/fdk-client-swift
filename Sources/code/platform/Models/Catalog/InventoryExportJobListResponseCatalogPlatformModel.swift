

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportJobListResponse
        Used By: Catalog
    */

    class InventoryExportJobListResponse: Codable {
        
        
        public var items: InventoryJobDetailResponse
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: InventoryJobDetailResponse) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode(InventoryJobDetailResponse.self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportJobListResponse
        Used By: Catalog
    */

    class InventoryExportJobListResponse: Codable {
        
        
        public var items: InventoryJobDetailResponse
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: InventoryJobDetailResponse) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode(InventoryJobDetailResponse.self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


