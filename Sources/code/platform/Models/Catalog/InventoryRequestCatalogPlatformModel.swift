

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryRequest
        Used By: Catalog
    */

    class InventoryRequest: Codable {
        
        
        public var sizes: [InvSize]
        
        public var item: ItemQuery
        
        public var companyId: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case item = "item"
            
            case companyId = "company_id"
            
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            
            self.sizes = sizes
            
            self.item = item
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sizes = try container.decode([InvSize].self, forKey: .sizes)
                
            
            
            
                item = try container.decode(ItemQuery.self, forKey: .item)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryRequest
        Used By: Catalog
    */

    class InventoryRequest: Codable {
        
        
        public var sizes: [InvSize]
        
        public var item: ItemQuery
        
        public var companyId: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case item = "item"
            
            case companyId = "company_id"
            
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            
            self.sizes = sizes
            
            self.item = item
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sizes = try container.decode([InvSize].self, forKey: .sizes)
                
            
            
            
                item = try container.decode(ItemQuery.self, forKey: .item)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}


