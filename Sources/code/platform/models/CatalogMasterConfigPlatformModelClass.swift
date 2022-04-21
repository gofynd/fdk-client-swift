

import Foundation
public extension PlatformClient {
    /*
         Model: CatalogMasterConfig
         Used By: Inventory
     */

    class CatalogMasterConfig: Codable {
        public var sourceSlug: String?

        public enum CodingKeys: String, CodingKey {
            case sourceSlug = "source_slug"
        }

        public init(sourceSlug: String? = nil) {
            self.sourceSlug = sourceSlug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sourceSlug = try container.decode(String.self, forKey: .sourceSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sourceSlug, forKey: .sourceSlug)
        }
    }
}
