

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var companyId: Int

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var slug: String

        public var name: String

        public var isActive: Bool

        public var product: ListViewProduct

        public var zoneId: String

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case channels

            case pincodesCount = "pincodes_count"

            case slug

            case name

            case isActive = "is_active"

            case product

            case zoneId = "zone_id"

            case storesCount = "stores_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.companyId = companyId

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.slug = slug

            self.name = name

            self.isActive = isActive

            self.product = product

            self.zoneId = zoneId

            self.storesCount = storesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

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
        public var companyId: Int

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var slug: String

        public var name: String

        public var isActive: Bool

        public var product: ListViewProduct

        public var zoneId: String

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case channels

            case pincodesCount = "pincodes_count"

            case slug

            case name

            case isActive = "is_active"

            case product

            case zoneId = "zone_id"

            case storesCount = "stores_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.companyId = companyId

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.slug = slug

            self.name = name

            self.isActive = isActive

            self.product = product

            self.zoneId = zoneId

            self.storesCount = storesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
        }
    }
}
