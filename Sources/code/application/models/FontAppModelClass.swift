

import Foundation
public extension ApplicationClient {
    /*
         Model: Font
         Used By: Theme
     */
    class Font: Codable {
        public var family: String?

        public var variants: Variants?

        public enum CodingKeys: String, CodingKey {
            case family

            case variants
        }

        public init(family: String? = nil, variants: Variants? = nil) {
            self.family = family

            self.variants = variants
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                family = try container.decode(String.self, forKey: .family)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode(Variants.self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(family, forKey: .family)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }
}
