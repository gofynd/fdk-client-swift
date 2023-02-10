

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var slug: String

        public var pincodesCount: Int

        public var product: ListViewProduct

        public var storesCount: Int

        public var companyId: Int

        public var isActive: Bool

        public var channels: ListViewChannels

        public var name: String

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case slug

            case pincodesCount = "pincodes_count"

            case product

            case storesCount = "stores_count"

            case companyId = "company_id"

            case isActive = "is_active"

            case channels

            case name

            case zoneId = "zone_id"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.slug = slug

            self.pincodesCount = pincodesCount

            self.product = product

            self.storesCount = storesCount

            self.companyId = companyId

            self.isActive = isActive

            self.channels = channels

            self.name = name

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}
