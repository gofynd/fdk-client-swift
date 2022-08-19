

import Foundation
public extension PlatformClient {
    /*
         Model: JioCodeUpsertDataSet
         Used By: Orders
     */

    class JioCodeUpsertDataSet: Codable {
        public var jioCode: String?

        public var articleId: String?

        public enum CodingKeys: String, CodingKey {
            case jioCode = "jio_code"

            case articleId = "article_id"
        }

        public init(articleId: String? = nil, jioCode: String? = nil) {
            self.jioCode = jioCode

            self.articleId = articleId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jioCode = try container.decode(String.self, forKey: .jioCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jioCode, forKey: .jioCode)

            try? container.encodeIfPresent(articleId, forKey: .articleId)
        }
    }
}
