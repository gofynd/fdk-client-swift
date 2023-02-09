

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var pincodesCount: Int

        public var name: String

        public var isActive: Bool

        public var storesCount: Int

        public var companyId: Int

        public var channels: ListViewChannels

        public var slug: String

        public var product: ListViewProduct

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case pincodesCount = "pincodes_count"

            case name

            case isActive = "is_active"

            case storesCount = "stores_count"

            case companyId = "company_id"

            case channels

            case slug

            case product

            case zoneId = "zone_id"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.pincodesCount = pincodesCount

            self.name = name

            self.isActive = isActive

            self.storesCount = storesCount

            self.companyId = companyId

            self.channels = channels

            self.slug = slug

            self.product = product

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}
