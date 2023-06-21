

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var product: ListViewProduct

        public var slug: String

        public var isActive: Bool

        public var pincodesCount: Int

        public var companyId: Int

        public var zoneId: String

        public var channels: ListViewChannels

        public var name: String

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case product

            case slug

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"

            case companyId = "company_id"

            case zoneId = "zone_id"

            case channels

            case name

            case storesCount = "stores_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.product = product

            self.slug = slug

            self.isActive = isActive

            self.pincodesCount = pincodesCount

            self.companyId = companyId

            self.zoneId = zoneId

            self.channels = channels

            self.name = name

            self.storesCount = storesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            name = try container.decode(String.self, forKey: .name)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var product: ListViewProduct

        public var slug: String

        public var isActive: Bool

        public var pincodesCount: Int

        public var companyId: Int

        public var zoneId: String

        public var channels: ListViewChannels

        public var name: String

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case product

            case slug

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"

            case companyId = "company_id"

            case zoneId = "zone_id"

            case channels

            case name

            case storesCount = "stores_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.product = product

            self.slug = slug

            self.isActive = isActive

            self.pincodesCount = pincodesCount

            self.companyId = companyId

            self.zoneId = zoneId

            self.channels = channels

            self.name = name

            self.storesCount = storesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            name = try container.decode(String.self, forKey: .name)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
        }
    }
}
