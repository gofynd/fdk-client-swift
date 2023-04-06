

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var product: ListViewProduct

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var companyId: Int

        public var name: String

        public var slug: String

        public var zoneId: String

        public var storesCount: Int

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case product

            case channels

            case pincodesCount = "pincodes_count"

            case companyId = "company_id"

            case name

            case slug

            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case isActive = "is_active"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.product = product

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.companyId = companyId

            self.name = name

            self.slug = slug

            self.zoneId = zoneId

            self.storesCount = storesCount

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var product: ListViewProduct

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var companyId: Int

        public var name: String

        public var slug: String

        public var zoneId: String

        public var storesCount: Int

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case product

            case channels

            case pincodesCount = "pincodes_count"

            case companyId = "company_id"

            case name

            case slug

            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case isActive = "is_active"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.product = product

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.companyId = companyId

            self.name = name

            self.slug = slug

            self.zoneId = zoneId

            self.storesCount = storesCount

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
