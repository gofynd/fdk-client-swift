

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var product: ListViewProduct

        public var isActive: Bool

        public var storesCount: Int

        public var zoneId: String

        public var slug: String

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var name: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case product

            case isActive = "is_active"

            case storesCount = "stores_count"

            case zoneId = "zone_id"

            case slug

            case channels

            case pincodesCount = "pincodes_count"

            case name

            case companyId = "company_id"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.product = product

            self.isActive = isActive

            self.storesCount = storesCount

            self.zoneId = zoneId

            self.slug = slug

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.name = name

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            slug = try container.decode(String.self, forKey: .slug)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
