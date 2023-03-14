

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ConfigurationListingSort
         Used By: Catalog
     */

    class ConfigurationListingSort: Codable {
        public var config: [ConfigurationListingSortConfig]?

        public var defaultKey: String

        public enum CodingKeys: String, CodingKey {
            case config

            case defaultKey = "default_key"
        }

        public init(config: [ConfigurationListingSortConfig]? = nil, defaultKey: String) {
            self.config = config

            self.defaultKey = defaultKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode([ConfigurationListingSortConfig].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            defaultKey = try container.decode(String.self, forKey: .defaultKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ConfigurationListingSort
         Used By: Catalog
     */

    class ConfigurationListingSort: Codable {
        public var config: [ConfigurationListingSortConfig]?

        public var defaultKey: String

        public enum CodingKeys: String, CodingKey {
            case config

            case defaultKey = "default_key"
        }

        public init(config: [ConfigurationListingSortConfig]? = nil, defaultKey: String) {
            self.config = config

            self.defaultKey = defaultKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode([ConfigurationListingSortConfig].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            defaultKey = try container.decode(String.self, forKey: .defaultKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
        }
    }
}
