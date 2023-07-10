

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var channels: ListViewChannels

        public var companyId: Int

        public var slug: String

        public var isActive: Bool

        public var product: ListViewProduct

        public var storesCount: Int

        public var name: String

        public var zoneId: String

        public var pincodesCount: Int

        public enum CodingKeys: String, CodingKey {
            case channels

            case companyId = "company_id"

            case slug

            case isActive = "is_active"

            case product

            case storesCount = "stores_count"

            case name

            case zoneId = "zone_id"

            case pincodesCount = "pincodes_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.channels = channels

            self.companyId = companyId

            self.slug = slug

            self.isActive = isActive

            self.product = product

            self.storesCount = storesCount

            self.name = name

            self.zoneId = zoneId

            self.pincodesCount = pincodesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

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
        public var channels: ListViewChannels

        public var companyId: Int

        public var slug: String

        public var isActive: Bool

        public var product: ListViewProduct

        public var storesCount: Int

        public var name: String

        public var zoneId: String

        public var pincodesCount: Int

        public enum CodingKeys: String, CodingKey {
            case channels

            case companyId = "company_id"

            case slug

            case isActive = "is_active"

            case product

            case storesCount = "stores_count"

            case name

            case zoneId = "zone_id"

            case pincodesCount = "pincodes_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.channels = channels

            self.companyId = companyId

            self.slug = slug

            self.isActive = isActive

            self.product = product

            self.storesCount = storesCount

            self.name = name

            self.zoneId = zoneId

            self.pincodesCount = pincodesCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
        }
    }
}
