

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var product: ListViewProduct

        public var isActive: Bool

        public var companyId: Int

        public var channels: ListViewChannels

        public var slug: String

        public var pincodesCount: Int

        public var zoneId: String

        public var name: String

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case product

            case isActive = "is_active"

            case companyId = "company_id"

            case channels

            case slug

            case pincodesCount = "pincodes_count"

            case zoneId = "zone_id"

            case name

            case storesCount = "stores_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.product = product

            self.isActive = isActive

            self.companyId = companyId

            self.channels = channels

            self.slug = slug

            self.pincodesCount = pincodesCount

            self.zoneId = zoneId

            self.name = name

            self.storesCount = storesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            slug = try container.decode(String.self, forKey: .slug)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
        }
    }
}
