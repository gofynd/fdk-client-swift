

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationListingFilterConfig
         Used By: Catalog
     */

    class ConfigurationListingFilterConfig: Codable {
        public var type: String

        public var priority: Int

        public var valueConfig: ConfigurationListingFilterValue?

        public var key: String

        public var name: String?

        public var isActive: Bool

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case priority

            case valueConfig = "value_config"

            case key

            case name

            case isActive = "is_active"

            case logo
        }

        public init(isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, type: String, valueConfig: ConfigurationListingFilterValue? = nil) {
            self.type = type

            self.priority = priority

            self.valueConfig = valueConfig

            self.key = key

            self.name = name

            self.isActive = isActive

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                valueConfig = try container.decode(ConfigurationListingFilterValue.self, forKey: .valueConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(valueConfig, forKey: .valueConfig)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
