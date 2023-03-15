

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationListingFilter
         Used By: Catalog
     */

    class ConfigurationListingFilter: Codable {
        public var attributeConfig: [ConfigurationListingFilterConfig]?

        public var allowSingle: Bool

        public enum CodingKeys: String, CodingKey {
            case attributeConfig = "attribute_config"

            case allowSingle = "allow_single"
        }

        public init(allowSingle: Bool, attributeConfig: [ConfigurationListingFilterConfig]? = nil) {
            self.attributeConfig = attributeConfig

            self.allowSingle = allowSingle
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributeConfig = try container.decode([ConfigurationListingFilterConfig].self, forKey: .attributeConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allowSingle = try container.decode(Bool.self, forKey: .allowSingle)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributeConfig, forKey: .attributeConfig)

            try? container.encodeIfPresent(allowSingle, forKey: .allowSingle)
        }
    }
}
