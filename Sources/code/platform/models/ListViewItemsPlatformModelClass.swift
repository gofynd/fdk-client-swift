

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var isActive: Bool

        public var pincodesCount: Int

        public var slug: String

        public var storesCount: Int

        public var zoneId: String

        public var companyId: Int

        public var channels: ListViewChannels

        public var name: String

        public var product: ListViewProduct

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case pincodesCount = "pincodes_count"

            case slug

            case storesCount = "stores_count"

            case zoneId = "zone_id"

            case companyId = "company_id"

            case channels

            case name

            case product
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.isActive = isActive

            self.pincodesCount = pincodesCount

            self.slug = slug

            self.storesCount = storesCount

            self.zoneId = zoneId

            self.companyId = companyId

            self.channels = channels

            self.name = name

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            slug = try container.decode(String.self, forKey: .slug)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            name = try container.decode(String.self, forKey: .name)

            product = try container.decode(ListViewProduct.self, forKey: .product)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
