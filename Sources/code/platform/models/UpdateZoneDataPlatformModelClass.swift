import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateZoneData
         Used By: Serviceability
     */

    class UpdateZoneData: Codable {
        public var slug: String

        public var product: ZoneProductTypes

        public var mapping: [ZoneMappingType]

        public var regionType: String

        public var companyId: Int

        public var name: String

        public var channels: [GetZoneDataViewChannels]

        public var zoneId: String

        public var storeIds: [Int]

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case slug

            case product

            case mapping

            case regionType = "region_type"

            case companyId = "company_id"

            case name

            case channels

            case zoneId = "zone_id"

            case storeIds = "store_ids"

            case isActive = "is_active"
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int], zoneId: String) {
            self.slug = slug

            self.product = product

            self.mapping = mapping

            self.regionType = regionType

            self.companyId = companyId

            self.name = name

            self.channels = channels

            self.zoneId = zoneId

            self.storeIds = storeIds

            self.isActive = isActive
        }

        public func duplicate() -> UpdateZoneData {
            let dict = self.dictionary!
            let copy = UpdateZoneData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            regionType = try container.decode(String.self, forKey: .regionType)

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

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

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
