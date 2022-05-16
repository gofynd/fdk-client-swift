

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var slug: String

        public var product: ListViewProduct

        public var storesCount: Int

        public var zoneId: String

        public var name: String

        public var companyId: Int

        public var pincodesCount: Int

        public var isActive: Bool

        public var channels: ListViewChannels

        public enum CodingKeys: String, CodingKey {
            case slug

            case product

            case storesCount = "stores_count"

            case zoneId = "zone_id"

            case name

            case companyId = "company_id"

            case pincodesCount = "pincodes_count"

            case isActive = "is_active"

            case channels
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.slug = slug

            self.product = product

            self.storesCount = storesCount

            self.zoneId = zoneId

            self.name = name

            self.companyId = companyId

            self.pincodesCount = pincodesCount

            self.isActive = isActive

            self.channels = channels
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)
        }
    }
}
