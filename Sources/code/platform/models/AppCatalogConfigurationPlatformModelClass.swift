

import Foundation
public extension PlatformClient {
    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var listing: ConfigurationListing?

        public var configId: String?

        public var appId: String

        public var id: String?

        public var product: ConfigurationProduct?

        public var configType: String

        public enum CodingKeys: String, CodingKey {
            case listing

            case configId = "config_id"

            case appId = "app_id"

            case id

            case product

            case configType = "config_type"
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: ConfigurationListing? = nil, product: ConfigurationProduct? = nil) {
            self.listing = listing

            self.configId = configId

            self.appId = appId

            self.id = id

            self.product = product

            self.configType = configType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

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

            appId = try container.decode(String.self, forKey: .appId)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configType, forKey: .configType)
        }
    }
}