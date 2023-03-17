

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var storesCount: Int

        public var pincodesCount: Int

        public var isActive: Bool

        public var product: ListViewProduct

        public var companyId: Int

        public var channels: ListViewChannels

        public var slug: String

        public var name: String

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case storesCount = "stores_count"

            case pincodesCount = "pincodes_count"

            case isActive = "is_active"

            case product

            case companyId = "company_id"

            case channels

            case slug

            case name

            case zoneId = "zone_id"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.storesCount = storesCount

            self.pincodesCount = pincodesCount

            self.isActive = isActive

            self.product = product

            self.companyId = companyId

            self.channels = channels

            self.slug = slug

            self.name = name

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var storesCount: Int

        public var pincodesCount: Int

        public var isActive: Bool

        public var product: ListViewProduct

        public var companyId: Int

        public var channels: ListViewChannels

        public var slug: String

        public var name: String

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case storesCount = "stores_count"

            case pincodesCount = "pincodes_count"

            case isActive = "is_active"

            case product

            case companyId = "company_id"

            case channels

            case slug

            case name

            case zoneId = "zone_id"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.storesCount = storesCount

            self.pincodesCount = pincodesCount

            self.isActive = isActive

            self.product = product

            self.companyId = companyId

            self.channels = channels

            self.slug = slug

            self.name = name

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}
