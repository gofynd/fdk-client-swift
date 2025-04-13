

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: UpdateZoneData
        Used By: Serviceability
    */

    class UpdateZoneData: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var isActive: Bool
        
        public var channels: [GetZoneDataViewChannels]
        
        public var product: ZoneProductTypes
        
        public var storeIds: [Int]
        
        public var regionType: String
        
        public var mapping: [ZoneMappingType]
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case channels = "channels"
            
            case product = "product"
            
            case storeIds = "store_ids"
            
            case regionType = "region_type"
            
            case mapping = "mapping"
            
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int], zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.channels = channels
            
            self.product = product
            
            self.storeIds = storeIds
            
            self.regionType = regionType
            
            self.mapping = mapping
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)
                
            
            
            
                product = try container.decode(ZoneProductTypes.self, forKey: .product)
                
            
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
                mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(mapping, forKey: .mapping)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: UpdateZoneData
        Used By: Serviceability
    */

    class UpdateZoneData: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var isActive: Bool
        
        public var channels: [GetZoneDataViewChannels]
        
        public var product: ZoneProductTypes
        
        public var storeIds: [Int]
        
        public var regionType: String
        
        public var mapping: [ZoneMappingType]
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case channels = "channels"
            
            case product = "product"
            
            case storeIds = "store_ids"
            
            case regionType = "region_type"
            
            case mapping = "mapping"
            
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int], zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.channels = channels
            
            self.product = product
            
            self.storeIds = storeIds
            
            self.regionType = regionType
            
            self.mapping = mapping
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)
                
            
            
            
                product = try container.decode(ZoneProductTypes.self, forKey: .product)
                
            
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
                mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(mapping, forKey: .mapping)
            
            
        }
        
    }
}


