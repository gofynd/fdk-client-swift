

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var storesCount: Int

        public var slug: String

        public var zoneId: String

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var name: String

        public var isActive: Bool

        public var companyId: Int

        public var product: ListViewProduct

        public enum CodingKeys: String, CodingKey {
            case storesCount = "stores_count"

            case slug

            case zoneId = "zone_id"

            case channels

            case pincodesCount = "pincodes_count"

            case name

            case isActive = "is_active"

            case companyId = "company_id"

            case product
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.storesCount = storesCount

            self.slug = slug

            self.zoneId = zoneId

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.name = name

            self.isActive = isActive

            self.companyId = companyId

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            slug = try container.decode(String.self, forKey: .slug)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)

            product = try container.decode(ListViewProduct.self, forKey: .product)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(product, forKey: .product)
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

        public var zoneId: String

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var name: String

        public var isActive: Bool

        public var companyId: Int

        public var product: ListViewProduct

        public enum CodingKeys: String, CodingKey {
            case storesCount = "stores_count"

            case slug

            case zoneId = "zone_id"

            case channels

            case pincodesCount = "pincodes_count"

            case name

            case isActive = "is_active"

            case companyId = "company_id"

            case product
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.storesCount = storesCount

            self.slug = slug

            self.zoneId = zoneId

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.name = name

            self.isActive = isActive

            self.companyId = companyId

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            slug = try container.decode(String.self, forKey: .slug)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)

            product = try container.decode(ListViewProduct.self, forKey: .product)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
