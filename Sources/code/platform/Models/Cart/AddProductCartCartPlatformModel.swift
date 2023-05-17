

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: AddProductCart
         Used By: Cart
     */

    class AddProductCart: Codable {
        public var itemId: Int?

        public var quantity: Int?

        public var display: String?

        public var extraMeta: [String: Any]?

        public var customJson: [String: Any]?

        public var sellerId: Int?

        public var itemSize: String?

        public var articleAssignment: [String: Any]?

        public var productGroupTags: [String]?

        public var articleId: String?

        public var parentItemIdentifiers: [[String: String]]?

        public var storeId: Int?

        public var pos: Bool?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case quantity

            case display

            case extraMeta = "extra_meta"

            case customJson = "_custom_json"

            case sellerId = "seller_id"

            case itemSize = "item_size"

            case articleAssignment = "article_assignment"

            case productGroupTags = "product_group_tags"

            case articleId = "article_id"

            case parentItemIdentifiers = "parent_item_identifiers"

            case storeId = "store_id"

            case pos
        }

        public init(articleAssignment: [String: Any]? = nil, articleId: String? = nil, display: String? = nil, extraMeta: [String: Any]? = nil, itemId: Int? = nil, itemSize: String? = nil, parentItemIdentifiers: [[String: String]]? = nil, pos: Bool? = nil, productGroupTags: [String]? = nil, quantity: Int? = nil, sellerId: Int? = nil, storeId: Int? = nil, customJson: [String: Any]? = nil) {
            self.itemId = itemId

            self.quantity = quantity

            self.display = display

            self.extraMeta = extraMeta

            self.customJson = customJson

            self.sellerId = sellerId

            self.itemSize = itemSize

            self.articleAssignment = articleAssignment

            self.productGroupTags = productGroupTags

            self.articleId = articleId

            self.parentItemIdentifiers = parentItemIdentifiers

            self.storeId = storeId

            self.pos = pos
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

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
                display = try container.decode(String.self, forKey: .display)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                itemSize = try container.decode(String.self, forKey: .itemSize)

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
                productGroupTags = try container.decode([String].self, forKey: .productGroupTags)

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
                parentItemIdentifiers = try container.decode([[String: String]].self, forKey: .parentItemIdentifiers)

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
                pos = try container.decode(Bool.self, forKey: .pos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pos, forKey: .pos)
        }
    }
}
