

import Foundation
public extension PlatformClient {
    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var configType: String

        public var id: String?

        public var product: ConfigurationProduct?

        public var appId: String

        public var listing: ConfigurationListing?

        public var configId: String?

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case id

            case product

            case appId = "app_id"

            case listing

            case configId = "config_id"
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: ConfigurationListing? = nil, product: ConfigurationProduct? = nil) {
            self.configType = configType

            self.id = id

            self.product = product

            self.appId = appId

            self.listing = listing

            self.configId = configId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configType = try container.decode(String.self, forKey: .configType)

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

            appId = try container.decode(String.self, forKey: .appId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(configId, forKey: .configId)
        }
    }
}
