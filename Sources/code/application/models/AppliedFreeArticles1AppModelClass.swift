

import Foundation
public extension ApplicationClient {
    /*
         Model: AppliedFreeArticles1
         Used By: Order
     */
    class AppliedFreeArticles1: Codable {
        public var articleId: String?

        public var quantity: Double?

        public var freeGiftItemDetails: [String: Any]?

        public var parentItemIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case articleId = "article_id"

            case quantity

            case freeGiftItemDetails = "free_gift_item_details"

            case parentItemIdentifier = "parent_item_identifier"
        }

        public init(articleId: String? = nil, freeGiftItemDetails: [String: Any]? = nil, parentItemIdentifier: String? = nil, quantity: Double? = nil) {
            self.articleId = articleId

            self.quantity = quantity

            self.freeGiftItemDetails = freeGiftItemDetails

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
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                freeGiftItemDetails = try container.decode([String: Any].self, forKey: .freeGiftItemDetails)

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

            try? container.encodeIfPresent(freeGiftItemDetails, forKey: .freeGiftItemDetails)

            try? container.encodeIfPresent(parentItemIdentifier, forKey: .parentItemIdentifier)
        }
    }
}