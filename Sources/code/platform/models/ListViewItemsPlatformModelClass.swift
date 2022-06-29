

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var name: String

        public var companyId: Int

        public var product: ListViewProduct

        public var isActive: Bool

        public var zoneId: String

        public var pincodesCount: Int

        public var channels: ListViewChannels

        public var storesCount: Int

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case name

            case companyId = "company_id"

            case product

            case isActive = "is_active"

            case zoneId = "zone_id"

            case pincodesCount = "pincodes_count"

            case channels

            case storesCount = "stores_count"

            case slug
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.name = name

            self.companyId = companyId

            self.product = product

            self.isActive = isActive

            self.zoneId = zoneId

            self.pincodesCount = pincodesCount

            self.channels = channels

            self.storesCount = storesCount

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
