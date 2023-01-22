

import Foundation
public extension PlatformClient {
    /*
        Model: ListViewItems
        Used By: Logistic
    */

    class ListViewItems: Codable {
        
        
        public var zoneId: String
        
        public var product: ListViewProduct
        
        public var isActive: Bool
        
        public var channels: ListViewChannels
        
        public var pincodesCount: Int
        
        public var companyId: Int
        
        public var slug: String
        
        public var storesCount: Int
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case product = "product"
            
            case isActive = "is_active"
            
            case channels = "channels"
            
            case pincodesCount = "pincodes_count"
            
            case companyId = "company_id"
            
            case slug = "slug"
            
            case storesCount = "stores_count"
            
            case name = "name"
            
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.product = product
            
            self.isActive = isActive
            
            self.channels = channels
            
            self.pincodesCount = pincodesCount
            
            self.companyId = companyId
            
            self.slug = slug
            
            self.storesCount = storesCount
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                channels = try container.decode(ListViewChannels.self, forKey: .channels)
                
            
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
