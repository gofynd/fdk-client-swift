

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ConfigurationListingFilter
         Used By: Catalog
     */

    class ConfigurationListingFilter: Codable {
        public var allowSingle: Bool

        public var attributeConfig: [ConfigurationListingFilterConfig]?

        public enum CodingKeys: String, CodingKey {
            case allowSingle = "allow_single"

            case attributeConfig = "attribute_config"
        }

        public init(allowSingle: Bool, attributeConfig: [ConfigurationListingFilterConfig]? = nil) {
            self.allowSingle = allowSingle

            self.attributeConfig = attributeConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allowSingle = try container.decode(Bool.self, forKey: .allowSingle)

            do {
                attributeConfig = try container.decode([ConfigurationListingFilterConfig].self, forKey: .attributeConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowSingle, forKey: .allowSingle)

            try? container.encodeIfPresent(attributeConfig, forKey: .attributeConfig)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ConfigurationListingFilter
         Used By: Catalog
     */

    class ConfigurationListingFilter: Codable {
        public var allowSingle: Bool

        public var attributeConfig: [ConfigurationListingFilterConfig]?

        public enum CodingKeys: String, CodingKey {
            case allowSingle = "allow_single"

            case attributeConfig = "attribute_config"
        }

        public init(allowSingle: Bool, attributeConfig: [ConfigurationListingFilterConfig]? = nil) {
            self.allowSingle = allowSingle

            self.attributeConfig = attributeConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allowSingle = try container.decode(Bool.self, forKey: .allowSingle)

            do {
                attributeConfig = try container.decode([ConfigurationListingFilterConfig].self, forKey: .attributeConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowSingle, forKey: .allowSingle)

            try? container.encodeIfPresent(attributeConfig, forKey: .attributeConfig)
        }
    }
}
