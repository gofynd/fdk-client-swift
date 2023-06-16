

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var name: String

        public var storesCount: Int

        public var pincodesCount: Int

        public var isActive: Bool

        public var companyId: Int

        public var slug: String

        public var product: ListViewProduct

        public var zoneId: String

        public var channels: ListViewChannels

        public enum CodingKeys: String, CodingKey {
            case name

            case storesCount = "stores_count"

            case pincodesCount = "pincodes_count"

            case isActive = "is_active"

            case companyId = "company_id"

            case slug

            case product

            case zoneId = "zone_id"

            case channels
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.name = name

            self.storesCount = storesCount

            self.pincodesCount = pincodesCount

            self.isActive = isActive

            self.companyId = companyId

            self.slug = slug

            self.product = product

            self.zoneId = zoneId

            self.channels = channels
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var name: String

        public var storesCount: Int

        public var pincodesCount: Int

        public var isActive: Bool

        public var companyId: Int

        public var slug: String

        public var product: ListViewProduct

        public var zoneId: String

        public var channels: ListViewChannels

        public enum CodingKeys: String, CodingKey {
            case name

            case storesCount = "stores_count"

            case pincodesCount = "pincodes_count"

            case isActive = "is_active"

            case companyId = "company_id"

            case slug

            case product

            case zoneId = "zone_id"

            case channels
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.name = name

            self.storesCount = storesCount

            self.pincodesCount = pincodesCount

            self.isActive = isActive

            self.companyId = companyId

            self.slug = slug

            self.product = product

            self.zoneId = zoneId

            self.channels = channels
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(channels, forKey: .channels)
        }
    }
}
