

import Foundation
public extension ApplicationClient {
    /*
         Model: SeoComponent
         Used By: Content
     */
    class SeoComponent: Codable {
        public var seo: SeoSchema?

        public enum CodingKeys: String, CodingKey {
            case seo
        }

        public init(seo: SeoSchema? = nil) {
            self.seo = seo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                seo = try container.decode(SeoSchema.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(seo, forKey: .seo)
        }
    }
}
