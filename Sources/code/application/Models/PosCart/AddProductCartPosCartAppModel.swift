

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: AddProductCart
         Used By: PosCart
     */
    class AddProductCart: Codable {
        public var itemSize: String?

        public var extraMeta: [String: Any]?

        public var articleId: String?

        public var articleAssignment: [String: Any]?

        public var itemId: Int?

        public var storeId: Int?

        public var display: String?

        public var quantity: Int?

        public var productGroupTags: [String]?

        public var pos: Bool?

        public var parentItemIdentifiers: [String: Any]?

        public var sellerId: Int?

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case extraMeta = "extra_meta"

            case articleId = "article_id"

            case articleAssignment = "article_assignment"

            case itemId = "item_id"

            case storeId = "store_id"

            case display

            case quantity

            case productGroupTags = "product_group_tags"

            case pos

            case parentItemIdentifiers = "parent_item_identifiers"

            case sellerId = "seller_id"
        }

        public init(articleAssignment: [String: Any]? = nil, articleId: String? = nil, display: String? = nil, extraMeta: [String: Any]? = nil, itemId: Int? = nil, itemSize: String? = nil, parentItemIdentifiers: [String: Any]? = nil, pos: Bool? = nil, productGroupTags: [String]? = nil, quantity: Int? = nil, sellerId: Int? = nil, storeId: Int? = nil) {
            self.itemSize = itemSize

            self.extraMeta = extraMeta

            self.articleId = articleId

            self.articleAssignment = articleAssignment

            self.itemId = itemId

            self.storeId = storeId

            self.display = display

            self.quantity = quantity

            self.productGroupTags = productGroupTags

            self.pos = pos

            self.parentItemIdentifiers = parentItemIdentifiers

            self.sellerId = sellerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemSize = try container.decode(String.self, forKey: .itemSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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
                articleAssignment = try container.decode([String: Any].self, forKey: .articleAssignment)

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
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

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
                productGroupTags = try container.decode([String].self, forKey: .productGroupTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pos = try container.decode(Bool.self, forKey: .pos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
        }
    }
}
