import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetZoneDataViewItems
         Used By: Serviceability
     */

    class GetZoneDataViewItems: Codable {
        public var regionType: String

        public var zoneId: String

        public var name: String

        public var mapping: [ZoneMappingType]

        public var pincodesCount: Int

        public var channels: [GetZoneDataViewChannels]

        public var storeIds: [Int]

        public var companyId: Int

        public var isActive: Bool

        public var product: ZoneProductTypes

        public var slug: String

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case regionType = "region_type"

            case zoneId = "zone_id"

            case name

            case mapping

            case pincodesCount = "pincodes_count"

            case channels

            case storeIds = "store_ids"

            case companyId = "company_id"

            case isActive = "is_active"

            case product

            case slug

            case storesCount = "stores_count"
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, pincodesCount: Int, product: ZoneProductTypes, regionType: String, slug: String, storesCount: Int, storeIds: [Int], zoneId: String) {
            self.regionType = regionType

            self.zoneId = zoneId

            self.name = name

            self.mapping = mapping

            self.pincodesCount = pincodesCount

            self.channels = channels

            self.storeIds = storeIds

            self.companyId = companyId

            self.isActive = isActive

            self.product = product

            self.slug = slug

            self.storesCount = storesCount
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            regionType = try container.decode(String.self, forKey: .regionType)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            slug = try container.decode(String.self, forKey: .slug)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
        }
    }
}
