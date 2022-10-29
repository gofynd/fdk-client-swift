

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var zoneId: String

        public var pincodesCount: Int

        public var storesCount: Int

        public var isActive: Bool

        public var channels: ListViewChannels

        public var name: String

        public var slug: String

        public var product: ListViewProduct

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case pincodesCount = "pincodes_count"

            case storesCount = "stores_count"

            case isActive = "is_active"

            case channels

            case name

            case slug

            case product

            case companyId = "company_id"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.zoneId = zoneId

            self.pincodesCount = pincodesCount

            self.storesCount = storesCount

            self.isActive = isActive

            self.channels = channels

            self.name = name

            self.slug = slug

            self.product = product

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
