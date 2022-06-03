

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var slug: String

        public var storesCount: Int

        public var pincodesCount: Int

        public var isActive: Bool

        public var zoneId: String

        public var channels: ListViewChannels

        public var product: ListViewProduct

        public var name: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case slug

            case storesCount = "stores_count"

            case pincodesCount = "pincodes_count"

            case isActive = "is_active"

            case zoneId = "zone_id"

            case channels

            case product

            case name

            case companyId = "company_id"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.slug = slug

            self.storesCount = storesCount

            self.pincodesCount = pincodesCount

            self.isActive = isActive

            self.zoneId = zoneId

            self.channels = channels

            self.product = product

            self.name = name

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
