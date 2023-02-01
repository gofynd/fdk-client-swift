

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var storesCount: Int

        public var companyId: Int

        public var name: String

        public var slug: String

        public var channels: ListViewChannels

        public var zoneId: String

        public var pincodesCount: Int

        public var product: ListViewProduct

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case storesCount = "stores_count"

            case companyId = "company_id"

            case name

            case slug

            case channels

            case zoneId = "zone_id"

            case pincodesCount = "pincodes_count"

            case product

            case isActive = "is_active"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.storesCount = storesCount

            self.companyId = companyId

            self.name = name

            self.slug = slug

            self.channels = channels

            self.zoneId = zoneId

            self.pincodesCount = pincodesCount

            self.product = product

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
