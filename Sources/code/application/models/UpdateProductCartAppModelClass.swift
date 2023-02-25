

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateProductCart
         Used By: Cart
     */
    class UpdateProductCart: Codable {
        public var extraMeta: [String: Any]?

        public var itemSize: String?

        public var identifiers: CartProductIdentifer

        public var parentItemIdentifiers: [String: Any]?

        public var quantity: Int?

        public var articleId: String?

        public var itemId: Int?

        public var itemIndex: Int?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case itemSize = "item_size"

            case identifiers

            case parentItemIdentifiers = "parent_item_identifiers"

            case quantity

            case articleId = "article_id"

            case itemId = "item_id"

            case itemIndex = "item_index"
        }

        public init(articleId: String? = nil, extraMeta: [String: Any]? = nil, identifiers: CartProductIdentifer, itemId: Int? = nil, itemIndex: Int? = nil, itemSize: String? = nil, parentItemIdentifiers: [String: Any]? = nil, quantity: Int? = nil) {
            self.extraMeta = extraMeta

            self.itemSize = itemSize

            self.identifiers = identifiers

            self.parentItemIdentifiers = parentItemIdentifiers

            self.quantity = quantity

            self.articleId = articleId

            self.itemId = itemId

            self.itemIndex = itemIndex
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

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
                articleId = try container.decode(String.self, forKey: .articleId)

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
                itemIndex = try container.decode(Int.self, forKey: .itemIndex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
        }
    }
}
