

import Foundation
public extension PlatformClient {
    /*
         Model: AppliedFreeArticles
         Used By: Cart
     */

    class AppliedFreeArticles: Codable {
        public var articleId: String?

        public var quantity: Int?

        public var freeGiftItemDetials: [FreeGiftItem]?

        public var parentItemIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case articleId = "article_id"

            case quantity

            case freeGiftItemDetials = "free_gift_item_detials"

            case parentItemIdentifier = "parent_item_identifier"
        }

        public init(articleId: String? = nil, freeGiftItemDetials: [FreeGiftItem]? = nil, parentItemIdentifier: String? = nil, quantity: Int? = nil) {
            self.articleId = articleId

            self.quantity = quantity

            self.freeGiftItemDetials = freeGiftItemDetials

            self.parentItemIdentifier = parentItemIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                freeGiftItemDetials = try container.decode([FreeGiftItem].self, forKey: .freeGiftItemDetials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemIdentifier = try container.decode(String.self, forKey: .parentItemIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(freeGiftItemDetials, forKey: .freeGiftItemDetials)

            try? container.encodeIfPresent(parentItemIdentifier, forKey: .parentItemIdentifier)
        }
    }
}
