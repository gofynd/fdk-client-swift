

import Foundation
public extension PlatformClient {
    /*
         Model: OtherEntityData
         Used By: Configuration
     */

    class OtherEntityData: Codable {
        public var articleIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case articleIdentifier = "article_identifier"
        }

        public init(articleIdentifier: String? = nil) {
            self.articleIdentifier = articleIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleIdentifier = try container.decode(String.self, forKey: .articleIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleIdentifier, forKey: .articleIdentifier)
        }
    }
}
