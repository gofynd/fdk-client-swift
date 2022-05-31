

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var isActive: Bool

        public var channels: ListViewChannels

        public var storesCount: Int

        public var pincodesCount: Int

        public var companyId: Int

        public var zoneId: String

        public var slug: String

        public var name: String

        public var product: ListViewProduct

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case channels

            case storesCount = "stores_count"

            case pincodesCount = "pincodes_count"

            case companyId = "company_id"

            case zoneId = "zone_id"

            case slug

            case name

            case product
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.isActive = isActive

            self.channels = channels

            self.storesCount = storesCount

            self.pincodesCount = pincodesCount

            self.companyId = companyId

            self.zoneId = zoneId

            self.slug = slug

            self.name = name

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            product = try container.decode(ListViewProduct.self, forKey: .product)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
