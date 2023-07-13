

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ShipmentArticle
         Used By: Cart
     */

    class ShipmentArticle: Codable {
        public var meta: String?

        public var quantity: String?

        public var articleId: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case quantity

            case articleId = "article_id"
        }

        public init(articleId: String? = nil, meta: String? = nil, quantity: String? = nil) {
            self.meta = meta

            self.quantity = quantity

            self.articleId = articleId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(String.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(String.self, forKey: .quantity)

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

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleId, forKey: .articleId)
        }
    }
}
