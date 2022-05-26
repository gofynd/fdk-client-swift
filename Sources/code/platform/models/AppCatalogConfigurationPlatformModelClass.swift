

import Foundation
public extension PlatformClient {
    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var appId: String

        public var product: ConfigurationProduct?

        public var id: String?

        public var configId: String?

        public var listing: ConfigurationListing?

        public var configType: String

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case product

            case id

            case configId = "config_id"

            case listing

            case configType = "config_type"
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: ConfigurationListing? = nil, product: ConfigurationProduct? = nil) {
            self.appId = appId

            self.product = product

            self.id = id

            self.configId = configId

            self.listing = listing

            self.configType = configType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

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

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(configType, forKey: .configType)
        }
    }
}
