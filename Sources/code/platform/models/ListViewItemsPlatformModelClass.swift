

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var name: String

        public var slug: String

        public var storesCount: Int

        public var channels: ListViewChannels

        public var isActive: Bool

        public var product: ListViewProduct

        public var companyId: Int

        public var pincodesCount: Int

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case name

            case slug

            case storesCount = "stores_count"

            case channels

            case isActive = "is_active"

            case product

            case companyId = "company_id"

            case pincodesCount = "pincodes_count"

            case zoneId = "zone_id"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.name = name

            self.slug = slug

            self.storesCount = storesCount

            self.channels = channels

            self.isActive = isActive

            self.product = product

            self.companyId = companyId

            self.pincodesCount = pincodesCount

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}
