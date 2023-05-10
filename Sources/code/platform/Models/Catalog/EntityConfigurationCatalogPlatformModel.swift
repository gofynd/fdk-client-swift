

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: EntityConfiguration
         Used By: Catalog
     */

    class EntityConfiguration: Codable {
        public var configId: String?

        public var configType: String

        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public var id: String?

        public var appId: String

        public var product: GetCatalogConfigurationDetailsProduct?

        public enum CodingKeys: String, CodingKey {
            case configId = "config_id"

            case configType = "config_type"

            case listing

            case id

            case appId = "app_id"

            case product
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            self.configId = configId

            self.configType = configType

            self.listing = listing

            self.id = id

            self.appId = appId

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: EntityConfiguration
         Used By: Catalog
     */

    class EntityConfiguration: Codable {
        public var configId: String?

        public var configType: String

        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public var id: String?

        public var appId: String

        public var product: GetCatalogConfigurationDetailsProduct?

        public enum CodingKeys: String, CodingKey {
            case configId = "config_id"

            case configType = "config_type"

            case listing

            case id

            case appId = "app_id"

            case product
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            self.configId = configId

            self.configType = configType

            self.listing = listing

            self.id = id

            self.appId = appId

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
