

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var zoneId: String

        public var storesCount: Int

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var product: ListViewProduct

        public var companyId: Int

        public var isActive: Bool

        public var name: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case channels

            case pincodesCount = "pincodes_count"

            case product

            case companyId = "company_id"

            case isActive = "is_active"

            case name

            case slug
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.zoneId = zoneId

            self.storesCount = storesCount

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.product = product

            self.companyId = companyId

            self.isActive = isActive

            self.name = name

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var zoneId: String

        public var storesCount: Int

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var product: ListViewProduct

        public var companyId: Int

        public var isActive: Bool

        public var name: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case channels

            case pincodesCount = "pincodes_count"

            case product

            case companyId = "company_id"

            case isActive = "is_active"

            case name

            case slug
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.zoneId = zoneId

            self.storesCount = storesCount

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.product = product

            self.companyId = companyId

            self.isActive = isActive

            self.name = name

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
