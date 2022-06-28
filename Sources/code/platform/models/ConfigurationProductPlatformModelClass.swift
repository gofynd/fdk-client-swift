

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProduct
         Used By: Catalog
     */

    class ConfigurationProduct: Codable {
        public var similar: ConfigurationProductSimilar

        public var variant: ConfigurationProductVariant

        public enum CodingKeys: String, CodingKey {
            case similar

            case variant
        }

        public init(similar: ConfigurationProductSimilar, variant: ConfigurationProductVariant) {
            self.similar = similar

            self.variant = variant
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            similar = try container.decode(ConfigurationProductSimilar.self, forKey: .similar)

            variant = try container.decode(ConfigurationProductVariant.self, forKey: .variant)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(variant, forKey: .variant)
        }
    }
}
