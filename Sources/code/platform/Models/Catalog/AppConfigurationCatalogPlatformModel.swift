

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var appId: String

        public var configId: String?

        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var listing: ConfigurationListing?

        public var configType: String

        public var product: ConfigurationProduct?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case configId = "config_id"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case listing

            case configType = "config_type"

            case product

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case type
        }

        public init(appId: String, configId: String? = nil, configType: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, listing: ConfigurationListing? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, product: ConfigurationProduct? = nil, type: String? = nil) {
            self.appId = appId

            self.configId = configId

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.listing = listing

            self.configType = configType

            self.product = product

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                configId = try container.decode(String.self, forKey: .configId)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AppConfiguration
         Used By: Catalog
     */

    class AppConfiguration: Codable {
        public var appId: String

        public var configId: String?

        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var listing: ConfigurationListing?

        public var configType: String

        public var product: ConfigurationProduct?

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case configId = "config_id"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case listing

            case configType = "config_type"

            case product

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case type
        }

        public init(appId: String, configId: String? = nil, configType: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, listing: ConfigurationListing? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, product: ConfigurationProduct? = nil, type: String? = nil) {
            self.appId = appId

            self.configId = configId

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.listing = listing

            self.configType = configType

            self.product = product

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                configId = try container.decode(String.self, forKey: .configId)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                product = try container.decode(ConfigurationProduct.self, forKey: .product)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(configId, forKey: .configId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
