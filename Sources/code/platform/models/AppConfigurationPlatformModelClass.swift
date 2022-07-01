

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var configId: String?

        public var product: ConfigurationProduct?

        public var appId: String

        public var listing: ConfigurationListing?

        public var configType: String

        public enum CodingKeys: String, CodingKey {
            case configId = "config_id"

            case product

            case appId = "app_id"

            case listing

            case configType = "config_type"
        }

        public init(appId: String, configId: String? = nil, configType: String, listing: ConfigurationListing? = nil, product: ConfigurationProduct? = nil) {
            self.configId = configId

            self.product = product

            self.appId = appId

            self.listing = listing

            self.configType = configType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configId = try container.decode(String.self, forKey: .configId)

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

            configType = try container.decode(String.self, forKey: .configType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(configType, forKey: .configType)
        }
    }
}
