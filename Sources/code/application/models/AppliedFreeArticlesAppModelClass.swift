

import Foundation
public extension ApplicationClient {
    /*
         Model: AppliedFreeArticles
         Used By: Order
     */
    class AppliedFreeArticles: Codable {
        public var parentItemIdentifier: String?

        public var quantity: Double?

        public var freeGiftItemDetails: [FreeGiftItemDetails]?

        public var articleId: String?

        public enum CodingKeys: String, CodingKey {
            case parentItemIdentifier = "parent_item_identifier"

            case quantity

            case freeGiftItemDetails = "free_gift_item_details"

            case articleId = "article_id"
        }

        public init(articleId: String? = nil, freeGiftItemDetails: [FreeGiftItemDetails]? = nil, parentItemIdentifier: String? = nil, quantity: Double? = nil) {
            self.parentItemIdentifier = parentItemIdentifier

            self.quantity = quantity

            self.freeGiftItemDetails = freeGiftItemDetails

            self.articleId = articleId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentItemIdentifier = try container.decode(String.self, forKey: .parentItemIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                freeGiftItemDetails = try container.decode([FreeGiftItemDetails].self, forKey: .freeGiftItemDetails)

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

            try? container.encodeIfPresent(parentItemIdentifier, forKey: .parentItemIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(freeGiftItemDetails, forKey: .freeGiftItemDetails)

            try? container.encodeIfPresent(articleId, forKey: .articleId)
        }
    }
}
