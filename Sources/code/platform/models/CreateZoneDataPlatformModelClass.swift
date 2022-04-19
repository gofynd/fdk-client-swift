import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreateZoneData
         Used By: Serviceability
     */

    class CreateZoneData: Codable {
        public var regionType: String

        public var name: String

        public var mapping: [ZoneMappingType]

        public var channels: [GetZoneDataViewChannels]

        public var storeIds: [Int]

        public var companyId: Int

        public var isActive: Bool

        public var product: ZoneProductTypes

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case regionType = "region_type"

            case name

            case mapping

            case channels

            case storeIds = "store_ids"

            case companyId = "company_id"

            case isActive = "is_active"

            case product

            case slug
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int]) {
            self.regionType = regionType

            self.name = name

            self.mapping = mapping

            self.channels = channels

            self.storeIds = storeIds

            self.companyId = companyId

            self.isActive = isActive

            self.product = product

            self.slug = slug
        }

        public func duplicate() -> CreateZoneData {
            let dict = self.dictionary!
            let copy = CreateZoneData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            regionType = try container.decode(String.self, forKey: .regionType)

            name = try container.decode(String.self, forKey: .name)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
