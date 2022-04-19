import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var product: ConfigurationProduct?

        public var listing: ConfigurationListing?

        public var configType: String

        public var configId: String?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case product

            case listing

            case configType = "config_type"

            case configId = "config_id"

            case appId = "app_id"
        }

        public init(appId: String, configId: String?, configType: String, listing: ConfigurationListing?, product: ConfigurationProduct?) {
            self.product = product

            self.listing = listing

            self.configType = configType

            self.configId = configId

            self.appId = appId
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

            do {
                listing = try container.decode(ConfigurationListing.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                configId = try container.decode(String.self, forKey: .configId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
