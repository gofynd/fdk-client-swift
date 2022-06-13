

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var name: String

        public var channels: ListViewChannels

        public var isActive: Bool

        public var pincodesCount: Int

        public var product: ListViewProduct

        public var storesCount: Int

        public var zoneId: String

        public var companyId: Int

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case name

            case channels

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"

            case product

            case storesCount = "stores_count"

            case zoneId = "zone_id"

            case companyId = "company_id"

            case slug
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.name = name

            self.channels = channels

            self.isActive = isActive

            self.pincodesCount = pincodesCount

            self.product = product

            self.storesCount = storesCount

            self.zoneId = zoneId

            self.companyId = companyId

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
