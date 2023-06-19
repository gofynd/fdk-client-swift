

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: FontV2
         Used By: Theme
     */
    class FontV2: Codable {
        public var variants: FontVariantsV2

        public var family: String

        public enum CodingKeys: String, CodingKey {
            case variants

            case family
        }

        public init(family: String, variants: FontVariantsV2) {
            self.variants = variants

            self.family = family
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            variants = try container.decode(FontVariantsV2.self, forKey: .variants)

            family = try container.decode(String.self, forKey: .family)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(family, forKey: .family)
        }
    }
}
