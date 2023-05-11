

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ArticleGiftDetailSchema
         Used By: Cart
     */

    class ArticleGiftDetailSchema: Codable {
        public var articleId: GiftDetailSchema?

        public enum CodingKeys: String, CodingKey {
            case articleId = "article_id"
        }

        public init(articleId: GiftDetailSchema? = nil) {
            self.articleId = articleId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleId = try container.decode(GiftDetailSchema.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleId, forKey: .articleId)
        }
    }
}
