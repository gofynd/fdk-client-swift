

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var product: ListViewProduct

        public var isActive: Bool

        public var channels: ListViewChannels

        public var slug: String

        public var zoneId: String

        public var companyId: Int

        public var pincodesCount: Int

        public var storesCount: Int

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case product

            case isActive = "is_active"

            case channels

            case slug

            case zoneId = "zone_id"

            case companyId = "company_id"

            case pincodesCount = "pincodes_count"

            case storesCount = "stores_count"

            case name
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.product = product

            self.isActive = isActive

            self.channels = channels

            self.slug = slug

            self.zoneId = zoneId

            self.companyId = companyId

            self.pincodesCount = pincodesCount

            self.storesCount = storesCount

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            slug = try container.decode(String.self, forKey: .slug)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(name, forKey: .name)
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

        public var isActive: Bool

        public var channels: ListViewChannels

        public var slug: String

        public var zoneId: String

        public var companyId: Int

        public var pincodesCount: Int

        public var storesCount: Int

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case product

            case isActive = "is_active"

            case channels

            case slug

            case zoneId = "zone_id"

            case companyId = "company_id"

            case pincodesCount = "pincodes_count"

            case storesCount = "stores_count"

            case name
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.product = product

            self.isActive = isActive

            self.channels = channels

            self.slug = slug

            self.zoneId = zoneId

            self.companyId = companyId

            self.pincodesCount = pincodesCount

            self.storesCount = storesCount

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            slug = try container.decode(String.self, forKey: .slug)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
