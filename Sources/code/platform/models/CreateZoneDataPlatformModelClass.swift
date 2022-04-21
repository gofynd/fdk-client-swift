

import Foundation
public extension PlatformClient {
    /*
         Model: CreateZoneData
         Used By: Serviceability
     */

    class CreateZoneData: Codable {
        public var regionType: String

        public var slug: String

        public var name: String

        public var companyId: Int

        public var isActive: Bool

        public var mapping: [ZoneMappingType]

        public var product: ZoneProductTypes

        public var channels: [GetZoneDataViewChannels]

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case regionType = "region_type"

            case slug

            case name

            case companyId = "company_id"

            case isActive = "is_active"

            case mapping

            case product

            case channels

            case storeIds = "store_ids"
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int]) {
            self.regionType = regionType

            self.slug = slug

            self.name = name

            self.companyId = companyId

            self.isActive = isActive

            self.mapping = mapping

            self.product = product

            self.channels = channels

            self.storeIds = storeIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            regionType = try container.decode(String.self, forKey: .regionType)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }
}
