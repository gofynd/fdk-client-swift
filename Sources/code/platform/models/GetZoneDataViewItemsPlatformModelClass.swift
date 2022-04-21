

import Foundation
public extension PlatformClient {
    /*
         Model: GetZoneDataViewItems
         Used By: Serviceability
     */

    class GetZoneDataViewItems: Codable {
        public var storeIds: [Int]

        public var regionType: String

        public var slug: String

        public var name: String

        public var companyId: Int

        public var storesCount: Int

        public var isActive: Bool

        public var mapping: [ZoneMappingType]

        public var product: ZoneProductTypes

        public var channels: [GetZoneDataViewChannels]

        public var zoneId: String

        public var pincodesCount: Int

        public enum CodingKeys: String, CodingKey {
            case storeIds = "store_ids"

            case regionType = "region_type"

            case slug

            case name

            case companyId = "company_id"

            case storesCount = "stores_count"

            case isActive = "is_active"

            case mapping

            case product

            case channels

            case zoneId = "zone_id"

            case pincodesCount = "pincodes_count"
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, pincodesCount: Int, product: ZoneProductTypes, regionType: String, slug: String, storesCount: Int, storeIds: [Int], zoneId: String) {
            self.storeIds = storeIds

            self.regionType = regionType

            self.slug = slug

            self.name = name

            self.companyId = companyId

            self.storesCount = storesCount

            self.isActive = isActive

            self.mapping = mapping

            self.product = product

            self.channels = channels

            self.zoneId = zoneId

            self.pincodesCount = pincodesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            regionType = try container.decode(String.self, forKey: .regionType)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
        }
    }
}
