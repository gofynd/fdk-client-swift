

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductVariant
         Used By: Catalog
     */

    class ConfigurationProductVariant: Codable {
        public var config: [ConfigurationProductVariantConfig]?

        public enum CodingKeys: String, CodingKey {
            case config
        }

        public init(config: [ConfigurationProductVariantConfig]? = nil) {
            self.config = config
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode([ConfigurationProductVariantConfig].self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }
}
