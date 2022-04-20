import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetZoneDataViewItems
         Used By: Serviceability
     */

    class GetZoneDataViewItems: Codable {
        public var slug: String

        public var product: ZoneProductTypes

        public var mapping: [ZoneMappingType]

        public var regionType: String

        public var storesCount: Int

        public var companyId: Int

        public var name: String

        public var channels: [GetZoneDataViewChannels]

        public var pincodesCount: Int

        public var zoneId: String

        public var storeIds: [Int]

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case slug

            case product

            case mapping

            case regionType = "region_type"

            case storesCount = "stores_count"

            case companyId = "company_id"

            case name

            case channels

            case pincodesCount = "pincodes_count"

            case zoneId = "zone_id"

            case storeIds = "store_ids"

            case isActive = "is_active"
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, pincodesCount: Int, product: ZoneProductTypes, regionType: String, slug: String, storesCount: Int, storeIds: [Int], zoneId: String) {
            self.slug = slug

            self.product = product

            self.mapping = mapping

            self.regionType = regionType

            self.storesCount = storesCount

            self.companyId = companyId

            self.name = name

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.zoneId = zoneId

            self.storeIds = storeIds

            self.isActive = isActive
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            regionType = try container.decode(String.self, forKey: .regionType)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
