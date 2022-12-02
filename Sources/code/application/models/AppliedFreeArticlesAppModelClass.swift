

import Foundation
public extension ApplicationClient {
    /*
         Model: AppliedFreeArticles
         Used By: Cart
     */
    class AppliedFreeArticles: Codable {
        public var articleId: String?

        public var parentItemIdentifier: String?

        public var freeGiftItemDetials: FreeGiftItem?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case articleId = "article_id"

            case parentItemIdentifier = "parent_item_identifier"

            case freeGiftItemDetials = "free_gift_item_detials"

            case quantity
        }

        public init(articleId: String? = nil, freeGiftItemDetials: FreeGiftItem? = nil, parentItemIdentifier: String? = nil, quantity: Int? = nil) {
            self.articleId = articleId

            self.parentItemIdentifier = parentItemIdentifier

            self.freeGiftItemDetials = freeGiftItemDetials

            self.quantity = quantity
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
                parentItemIdentifier = try container.decode(String.self, forKey: .parentItemIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                freeGiftItemDetials = try container.decode(FreeGiftItem.self, forKey: .freeGiftItemDetials)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(parentItemIdentifier, forKey: .parentItemIdentifier)

            try? container.encodeIfPresent(freeGiftItemDetials, forKey: .freeGiftItemDetials)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
