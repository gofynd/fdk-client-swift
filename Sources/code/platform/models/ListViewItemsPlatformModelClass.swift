import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var zoneId: String

        public var name: String

        public var pincodesCount: Int

        public var channels: ListViewChannels

        public var companyId: Int

        public var isActive: Bool

        public var product: ListViewProduct

        public var slug: String

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case name

            case pincodesCount = "pincodes_count"

            case channels

            case companyId = "company_id"

            case isActive = "is_active"

            case product

            case slug

            case storesCount = "stores_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.zoneId = zoneId

            self.name = name

            self.pincodesCount = pincodesCount

            self.channels = channels

            self.companyId = companyId

            self.isActive = isActive

            self.product = product

            self.slug = slug

            self.storesCount = storesCount
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            slug = try container.decode(String.self, forKey: .slug)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
        }
    }
}
