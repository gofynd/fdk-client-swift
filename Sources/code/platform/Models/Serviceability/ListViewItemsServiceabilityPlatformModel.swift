

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var storesCount: Int

        public var slug: String

        public var companyId: Int

        public var isActive: Bool

        public var zoneId: String

        public var product: ListViewProduct

        public var pincodesCount: Int

        public var channels: ListViewChannels

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case storesCount = "stores_count"

            case slug

            case companyId = "company_id"

            case isActive = "is_active"

            case zoneId = "zone_id"

            case product

            case pincodesCount = "pincodes_count"

            case channels

            case name
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.storesCount = storesCount

            self.slug = slug

            self.companyId = companyId

            self.isActive = isActive

            self.zoneId = zoneId

            self.product = product

            self.pincodesCount = pincodesCount

            self.channels = channels

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            slug = try container.decode(String.self, forKey: .slug)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

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
        public var storesCount: Int

        public var slug: String

        public var companyId: Int

        public var isActive: Bool

        public var zoneId: String

        public var product: ListViewProduct

        public var pincodesCount: Int

        public var channels: ListViewChannels

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case storesCount = "stores_count"

            case slug

            case companyId = "company_id"

            case isActive = "is_active"

            case zoneId = "zone_id"

            case product

            case pincodesCount = "pincodes_count"

            case channels

            case name
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.storesCount = storesCount

            self.slug = slug

            self.companyId = companyId

            self.isActive = isActive

            self.zoneId = zoneId

            self.product = product

            self.pincodesCount = pincodesCount

            self.channels = channels

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            slug = try container.decode(String.self, forKey: .slug)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
