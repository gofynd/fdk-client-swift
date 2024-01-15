

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ListViewItems
        Used By: Serviceability
    */

    class ListViewItems: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var slug: String
        
        public var storesCount: Int
        
        public var isActive: Bool
        
        public var product: ListViewProduct
        
        public var regionsCount: Int
        
        public var companyId: Int
        
        public var channels: ListViewChannels
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case storesCount = "stores_count"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case regionsCount = "regions_count"
            
            case companyId = "company_id"
            
            case channels = "channels"
            
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, product: ListViewProduct, regionsCount: Int, slug: String, storesCount: Int, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.slug = slug
            
            self.storesCount = storesCount
            
            self.isActive = isActive
            
            self.product = product
            
            self.regionsCount = regionsCount
            
            self.companyId = companyId
            
            self.channels = channels
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                regionsCount = try container.decode(Int.self, forKey: .regionsCount)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                channels = try container.decode(ListViewChannels.self, forKey: .channels)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(regionsCount, forKey: .regionsCount)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ListViewItems
        Used By: Serviceability
    */

    class ListViewItems: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var slug: String
        
        public var storesCount: Int
        
        public var isActive: Bool
        
        public var product: ListViewProduct
        
        public var regionsCount: Int
        
        public var companyId: Int
        
        public var channels: ListViewChannels
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case storesCount = "stores_count"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case regionsCount = "regions_count"
            
            case companyId = "company_id"
            
            case channels = "channels"
            
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, product: ListViewProduct, regionsCount: Int, slug: String, storesCount: Int, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.slug = slug
            
            self.storesCount = storesCount
            
            self.isActive = isActive
            
            self.product = product
            
            self.regionsCount = regionsCount
            
            self.companyId = companyId
            
            self.channels = channels
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                regionsCount = try container.decode(Int.self, forKey: .regionsCount)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                channels = try container.decode(ListViewChannels.self, forKey: .channels)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(regionsCount, forKey: .regionsCount)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
        }
        
    }
}


