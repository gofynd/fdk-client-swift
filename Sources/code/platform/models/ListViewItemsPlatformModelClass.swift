

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var pincodesCount: Int

        public var slug: String

        public var product: ListViewProduct

        public var isActive: Bool

        public var zoneId: String

        public var name: String

        public var companyId: Int

        public var storesCount: Int

        public var channels: ListViewChannels

        public enum CodingKeys: String, CodingKey {
            case pincodesCount = "pincodes_count"

            case slug

            case product

            case isActive = "is_active"

            case zoneId = "zone_id"

            case name

            case companyId = "company_id"

            case storesCount = "stores_count"

            case channels
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.pincodesCount = pincodesCount

            self.slug = slug

            self.product = product

            self.isActive = isActive

            self.zoneId = zoneId

            self.name = name

            self.companyId = companyId

            self.storesCount = storesCount

            self.channels = channels
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)
        }
    }
}
