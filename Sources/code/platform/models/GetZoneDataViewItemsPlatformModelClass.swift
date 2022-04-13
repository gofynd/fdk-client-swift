import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetZoneDataViewItems
         Used By: Serviceability
     */

    class GetZoneDataViewItems: Codable {
        public var zoneId: String

        public var mapping: [ZoneMappingType]

        public var slug: String

        public var name: String

        public var isActive: Bool

        public var storeIds: [Int]

        public var channels: [GetZoneDataViewChannels]

        public var regionType: String

        public var storesCount: Int

        public var companyId: Int

        public var pincodesCount: Int

        public var product: ZoneProductTypes

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case mapping

            case slug

            case name

            case isActive = "is_active"

            case storeIds = "store_ids"

            case channels

            case regionType = "region_type"

            case storesCount = "stores_count"

            case companyId = "company_id"

            case pincodesCount = "pincodes_count"

            case product
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, pincodesCount: Int, product: ZoneProductTypes, regionType: String, slug: String, storesCount: Int, storeIds: [Int], zoneId: String) {
            self.zoneId = zoneId

            self.mapping = mapping

            self.slug = slug

            self.name = name

            self.isActive = isActive

            self.storeIds = storeIds

            self.channels = channels

            self.regionType = regionType

            self.storesCount = storesCount

            self.companyId = companyId

            self.pincodesCount = pincodesCount

            self.product = product
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            regionType = try container.decode(String.self, forKey: .regionType)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
