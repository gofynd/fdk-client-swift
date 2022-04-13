import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var zoneId: String

        public var companyId: Int

        public var slug: String

        public var isActive: Bool

        public var channels: ListViewChannels

        public var storesCount: Int

        public var name: String

        public var pincodesCount: Int

        public var product: ListViewProduct

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case companyId = "company_id"

            case slug

            case isActive = "is_active"

            case channels

            case storesCount = "stores_count"

            case name

            case pincodesCount = "pincodes_count"

            case product
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.zoneId = zoneId

            self.companyId = companyId

            self.slug = slug

            self.isActive = isActive

            self.channels = channels

            self.storesCount = storesCount

            self.name = name

            self.pincodesCount = pincodesCount

            self.product = product
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            name = try container.decode(String.self, forKey: .name)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            product = try container.decode(ListViewProduct.self, forKey: .product)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
