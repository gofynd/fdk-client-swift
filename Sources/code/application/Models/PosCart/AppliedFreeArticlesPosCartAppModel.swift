

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: AppliedFreeArticles
         Used By: PosCart
     */
    class AppliedFreeArticles: Codable {
        public var quantity: Int?

        public var articleId: String?

        public var parentItemIdentifier: String?

        public var freeGiftItemDetails: FreeGiftItem?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case articleId = "article_id"

            case parentItemIdentifier = "parent_item_identifier"

            case freeGiftItemDetails = "free_gift_item_details"
        }

        public init(articleId: String? = nil, freeGiftItemDetails: FreeGiftItem? = nil, parentItemIdentifier: String? = nil, quantity: Int? = nil) {
            self.quantity = quantity

            self.articleId = articleId

            self.parentItemIdentifier = parentItemIdentifier

            self.freeGiftItemDetails = freeGiftItemDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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

            do {
                parentItemIdentifier = try container.decode(String.self, forKey: .parentItemIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                freeGiftItemDetails = try container.decode(FreeGiftItem.self, forKey: .freeGiftItemDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(parentItemIdentifier, forKey: .parentItemIdentifier)

            try? container.encodeIfPresent(freeGiftItemDetails, forKey: .freeGiftItemDetails)
        }
    }
}
