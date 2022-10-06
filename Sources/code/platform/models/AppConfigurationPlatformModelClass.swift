

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var listing: ConfigurationListing?

        public var type: String?

        public var configType: String

        public var createdOn: String?

        public var configId: String?

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var product: ConfigurationProduct?

        public var appId: String

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case listing

            case type

            case configType = "config_type"

            case createdOn = "created_on"

            case configId = "config_id"

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case product

            case appId = "app_id"

            case modifiedOn = "modified_on"
        }

        public init(appId: String, configId: String? = nil, configType: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, listing: ConfigurationListing? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, product: ConfigurationProduct? = nil, type: String? = nil) {
            self.listing = listing

            self.type = type

            self.configType = configType

            self.createdOn = createdOn

            self.configId = configId

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.product = product

            self.appId = appId

            self.modifiedOn = modifiedOn
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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
