

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var channels: ListViewChannels

        public var isActive: Bool

        public var pincodesCount: Int

        public var companyId: Int

        public var product: ListViewProduct

        public var name: String

        public var zoneId: String

        public var storesCount: Int

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case channels

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"

            case companyId = "company_id"

            case product

            case name

            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case slug
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.channels = channels

            self.isActive = isActive

            self.pincodesCount = pincodesCount

            self.companyId = companyId

            self.product = product

            self.name = name

            self.zoneId = zoneId

            self.storesCount = storesCount

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

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
        public var channels: ListViewChannels

        public var isActive: Bool

        public var pincodesCount: Int

        public var companyId: Int

        public var product: ListViewProduct

        public var name: String

        public var zoneId: String

        public var storesCount: Int

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case channels

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"

            case companyId = "company_id"

            case product

            case name

            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case slug
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.channels = channels

            self.isActive = isActive

            self.pincodesCount = pincodesCount

            self.companyId = companyId

            self.product = product

            self.name = name

            self.zoneId = zoneId

            self.storesCount = storesCount

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
