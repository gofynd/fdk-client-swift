

import Foundation
public extension PlatformClient {
    /*
         Model: AppCatalogConfiguration
         Used By: Catalog
     */

    class AppCatalogConfiguration: Codable {
        public var configId: String?

        public var configType: String

        public var id: String?

        public var listing: ConfigurationListing?

        public var modifiedOn: String?

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var product: ConfigurationProduct?

        public var type: String?

        public var createdOn: String?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case configId = "config_id"

            case configType = "config_type"

            case id

            case listing

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case product

            case type

            case createdOn = "created_on"

            case appId = "app_id"
        }

        public init(appId: String, configId: String? = nil, configType: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, id: String? = nil, listing: ConfigurationListing? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, product: ConfigurationProduct? = nil, type: String? = nil) {
            self.configId = configId

            self.configType = configType

            self.id = id

            self.listing = listing

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.product = product

            self.type = type

            self.createdOn = createdOn

            self.appId = appId
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
                id = try container.decode(String.self, forKey: .id)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
