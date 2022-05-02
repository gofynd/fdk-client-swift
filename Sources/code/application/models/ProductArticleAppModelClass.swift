

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductArticle
         Used By: Cart
     */
    class ProductArticle: Codable {
        public var size: String?

        public var productGroupTags: [String]?

        public var type: String?

        public var parentItemId: String?

        public var extraMeta: [String: Any]?

        public var uid: String?

        public var price: ArticlePriceInfo?

        public var store: BaseInfo?

        public var parentItemSize: String?

        public var quantity: Int?

        public var seller: BaseInfo?

        public enum CodingKeys: String, CodingKey {
            case size

            case productGroupTags = "product_group_tags"

            case type

            case parentItemId = "parent_item_id"

            case extraMeta = "extra_meta"

            case uid

            case price

            case store

            case parentItemSize = "parent_item_size"

            case quantity

            case seller
        }

        public init(extraMeta: [String: Any]? = nil, parentItemId: String? = nil, parentItemSize: String? = nil, price: ArticlePriceInfo? = nil, productGroupTags: [String]? = nil, quantity: Int? = nil, seller: BaseInfo? = nil, size: String? = nil, store: BaseInfo? = nil, type: String? = nil, uid: String? = nil) {
            self.size = size

            self.productGroupTags = productGroupTags

            self.type = type

            self.parentItemId = parentItemId

            self.extraMeta = extraMeta

            self.uid = uid

            self.price = price

            self.store = store

            self.parentItemSize = parentItemSize

            self.quantity = quantity

            self.seller = seller
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemId = try container.decode(String.self, forKey: .parentItemId)

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ArticlePriceInfo.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(BaseInfo.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemSize = try container.decode(String.self, forKey: .parentItemSize)

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
                seller = try container.decode(BaseInfo.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(parentItemId, forKey: .parentItemId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(parentItemSize, forKey: .parentItemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(seller, forKey: .seller)
        }
    }
}
