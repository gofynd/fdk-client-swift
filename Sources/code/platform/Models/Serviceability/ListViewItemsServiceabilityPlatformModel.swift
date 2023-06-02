

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var zoneId: String

        public var channels: ListViewChannels

        public var product: ListViewProduct

        public var name: String

        public var companyId: Int

        public var slug: String

        public var storesCount: Int

        public var isActive: Bool

        public var pincodesCount: Int

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case channels

            case product

            case name

            case companyId = "company_id"

            case slug

            case storesCount = "stores_count"

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.zoneId = zoneId

            self.channels = channels

            self.product = product

            self.name = name

            self.companyId = companyId

            self.slug = slug

            self.storesCount = storesCount

            self.isActive = isActive

            self.pincodesCount = pincodesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
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

        public var channels: ListViewChannels

        public var product: ListViewProduct

        public var name: String

        public var companyId: Int

        public var slug: String

        public var storesCount: Int

        public var isActive: Bool

        public var pincodesCount: Int

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case channels

            case product

            case name

            case companyId = "company_id"

            case slug

            case storesCount = "stores_count"

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.zoneId = zoneId

            self.channels = channels

            self.product = product

            self.name = name

            self.companyId = companyId

            self.slug = slug

            self.storesCount = storesCount

            self.isActive = isActive

            self.pincodesCount = pincodesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
        }
    }
}
