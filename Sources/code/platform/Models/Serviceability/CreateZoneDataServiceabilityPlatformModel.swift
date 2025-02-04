

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CreateZoneData
        Used By: Serviceability
    */

    class CreateZoneData: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var isActive: Bool
        
        public var channels: [GetZoneDataViewChannels]
        
        public var storeIds: [Int]
        
        public var regionType: String
        
        public var mapping: [ZoneMappingType]
        
        public var product: ZoneProductTypes?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case channels = "channels"
            
            case storeIds = "store_ids"
            
            case regionType = "region_type"
            
            case mapping = "mapping"
            
            case product = "product"
            
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes? = nil, regionType: String, slug: String, storeIds: [Int]) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.channels = channels
            
            self.storeIds = storeIds
            
            self.regionType = regionType
            
            self.mapping = mapping
            
            self.product = product
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)
                
            
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
                mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)
                
            
            
            
                do {
                    product = try container.decode(ZoneProductTypes.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(mapping, forKey: .mapping)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CreateZoneData
        Used By: Serviceability
    */

    class CreateZoneData: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var isActive: Bool
        
        public var channels: [GetZoneDataViewChannels]
        
        public var storeIds: [Int]
        
        public var regionType: String
        
        public var mapping: [ZoneMappingType]
        
        public var product: ZoneProductTypes?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case channels = "channels"
            
            case storeIds = "store_ids"
            
            case regionType = "region_type"
            
            case mapping = "mapping"
            
            case product = "product"
            
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes? = nil, regionType: String, slug: String, storeIds: [Int]) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.channels = channels
            
            self.storeIds = storeIds
            
            self.regionType = regionType
            
            self.mapping = mapping
            
            self.product = product
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)
                
            
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
                mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)
                
            
            
            
                do {
                    product = try container.decode(ZoneProductTypes.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(mapping, forKey: .mapping)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}


