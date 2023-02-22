

import Foundation
public extension PlatformClient {
    /*
         Model: EntityConfiguration
         Used By: Catalog
     */

    class EntityConfiguration: Codable {
        public var appId: String

        public var product: GetCatalogConfigurationDetailsProduct?

        public var configType: String

        public var id: String?

        public var configId: String?

        public var listing: GetCatalogConfigurationDetailsSchemaListing?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case product

            case configType = "config_type"

            case id

            case configId = "config_id"

            case listing
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            self.appId = appId

            self.product = product

            self.configType = configType

            self.id = id

            self.configId = configId

            self.listing = listing
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

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

            do {
                listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(listing, forKey: .listing)
        }
    }
}
