

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var companyId: Int

        public var isActive: Bool

        public var pincodesCount: Int

        public var slug: String

        public var zoneId: String

        public var name: String

        public var product: ListViewProduct

        public var storesCount: Int

        public var channels: ListViewChannels

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"

            case slug

            case zoneId = "zone_id"

            case name

            case product

            case storesCount = "stores_count"

            case channels
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.companyId = companyId

            self.isActive = isActive

            self.pincodesCount = pincodesCount

            self.slug = slug

            self.zoneId = zoneId

            self.name = name

            self.product = product

            self.storesCount = storesCount

            self.channels = channels
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            slug = try container.decode(String.self, forKey: .slug)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ListViewItems
         Used By: Logistic
     */

    class ListViewItems: Codable {
        public var companyId: Int

        public var isActive: Bool

        public var pincodesCount: Int

        public var slug: String

        public var zoneId: String

        public var name: String

        public var product: ListViewProduct

        public var storesCount: Int

        public var channels: ListViewChannels

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case isActive = "is_active"

            case pincodesCount = "pincodes_count"

            case slug

            case zoneId = "zone_id"

            case name

            case product

            case storesCount = "stores_count"

            case channels
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.companyId = companyId

            self.isActive = isActive

            self.pincodesCount = pincodesCount

            self.slug = slug

            self.zoneId = zoneId

            self.name = name

            self.product = product

            self.storesCount = storesCount

            self.channels = channels
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            slug = try container.decode(String.self, forKey: .slug)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)
        }
    }
}
