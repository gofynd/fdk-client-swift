

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: EntityConfiguration
         Used By: Catalog
     */

    class EntityConfiguration: Codable {
        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public var product: GetCatalogConfigurationDetailsProduct?

        public var configType: String

        public var appId: String

        public var id: String?

        public var configId: String?

        public enum CodingKeys: String, CodingKey {
            case listing

            case product

            case configType = "config_type"

            case appId = "app_id"

            case id

            case configId = "config_id"
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            self.listing = listing

            self.product = product

            self.configType = configType

            self.appId = appId

            self.id = id

            self.configId = configId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(configId, forKey: .configId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: EntityConfiguration
         Used By: Catalog
     */

    class EntityConfiguration: Codable {
        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public var product: GetCatalogConfigurationDetailsProduct?

        public var configType: String

        public var appId: String

        public var id: String?

        public var configId: String?

        public enum CodingKeys: String, CodingKey {
            case listing

            case product

            case configType = "config_type"

            case appId = "app_id"

            case id

            case configId = "config_id"
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            self.listing = listing

            self.product = product

            self.configType = configType

            self.appId = appId

            self.id = id

            self.configId = configId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(configId, forKey: .configId)
        }
    }
}
