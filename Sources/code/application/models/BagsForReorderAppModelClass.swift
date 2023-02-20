

import Foundation
public extension ApplicationClient {
    /*
         Model: BagsForReorder
         Used By: Order
     */
    class BagsForReorder: Codable {
        public var storeId: Int?

        public var itemSize: String?

        public var itemId: Int?

        public var articleAssignment: BagsForReorderArticleAssignment?

        public var sellerId: Int?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case itemSize = "item_size"

            case itemId = "item_id"

            case articleAssignment = "article_assignment"

            case sellerId = "seller_id"

            case quantity
        }

        public init(articleAssignment: BagsForReorderArticleAssignment? = nil, itemId: Int? = nil, itemSize: String? = nil, quantity: Int? = nil, sellerId: Int? = nil, storeId: Int? = nil) {
            self.storeId = storeId

            self.itemSize = itemSize

            self.itemId = itemId

            self.articleAssignment = articleAssignment

            self.sellerId = sellerId

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSize = try container.decode(String.self, forKey: .itemSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(BagsForReorderArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerId = try container.decode(Int.self, forKey: .sellerId)

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

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
