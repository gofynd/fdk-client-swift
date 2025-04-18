

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryRequestSchema
        Used By: Catalog
    */

    class InventoryRequestSchema: Codable {
        
        
        public var companyId: Int
        
        public var sizes: [InvSizeSchema]
        
        public var item: ItemQuerySchema
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case sizes = "sizes"
            
            case item = "item"
            
        }

        public init(companyId: Int, item: ItemQuerySchema, sizes: [InvSizeSchema]) {
            
            self.companyId = companyId
            
            self.sizes = sizes
            
            self.item = item
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                sizes = try container.decode([InvSizeSchema].self, forKey: .sizes)
                
            
            
            
                item = try container.decode(ItemQuerySchema.self, forKey: .item)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryRequestSchema
        Used By: Catalog
    */

    class InventoryRequestSchema: Codable {
        
        
        public var companyId: Int
        
        public var sizes: [InvSizeSchema]
        
        public var item: ItemQuerySchema
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case sizes = "sizes"
            
            case item = "item"
            
        }

        public init(companyId: Int, item: ItemQuerySchema, sizes: [InvSizeSchema]) {
            
            self.companyId = companyId
            
            self.sizes = sizes
            
            self.item = item
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                sizes = try container.decode([InvSizeSchema].self, forKey: .sizes)
                
            
            
            
                item = try container.decode(ItemQuerySchema.self, forKey: .item)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
        }
        
    }
}


