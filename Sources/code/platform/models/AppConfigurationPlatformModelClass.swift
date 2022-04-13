import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var product: ConfigurationProduct?

        public var configType: String

        public var appId: String

        public var configId: String?

        public var listing: ConfigurationListing?

        public enum CodingKeys: String, CodingKey {
            case product

            case configType = "config_type"

            case appId = "app_id"

            case configId = "config_id"

            case listing
        }

        public init(appId: String, configId: String?, configType: String, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.product = product

            self.configType = configType

            self.appId = appId

            self.configId = configId

            self.listing = listing
        }

        public func duplicate() -> AppConfiguration {
            let dict = self.dictionary!
            let copy = AppConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            appId = try container.decode(String.self, forKey: .appId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(listing, forKey: .listing)
        }
    }
}
