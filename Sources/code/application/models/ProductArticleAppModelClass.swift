

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductArticle
         Used By: Cart
     */
    class ProductArticle: Codable {
        public var productGroupTags: [String]?

        public var seller: BaseInfo?

        public var price: ArticlePriceInfo?

        public var type: String?

        public var uid: String?

        public var quantity: Int?

        public var parentItemIdentifiers: [String: Any]?

        public var extraMeta: [String: Any]?

        public var store: BaseInfo?

        public var customJson: [String: Any]?

        public var size: String?

        public enum CodingKeys: String, CodingKey {
            case productGroupTags = "product_group_tags"

            case seller

            case price

            case type

            case uid

            case quantity

            case parentItemIdentifiers = "parent_item_identifiers"

            case extraMeta = "extra_meta"

            case store

            case customJson = "_custom_json"

            case size
        }

        public init(extraMeta: [String: Any]? = nil, parentItemIdentifiers: [String: Any]? = nil, price: ArticlePriceInfo? = nil, productGroupTags: [String]? = nil, quantity: Int? = nil, seller: BaseInfo? = nil, size: String? = nil, store: BaseInfo? = nil, type: String? = nil, uid: String? = nil, customJson: [String: Any]? = nil) {
            self.productGroupTags = productGroupTags

            self.seller = seller

            self.price = price

            self.type = type

            self.uid = uid

            self.quantity = quantity

            self.parentItemIdentifiers = parentItemIdentifiers

            self.extraMeta = extraMeta

            self.store = store

            self.customJson = customJson

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productGroupTags = try container.decode([String].self, forKey: .productGroupTags)

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

            do {
                price = try container.decode(ArticlePriceInfo.self, forKey: .price)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

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
                store = try container.decode(BaseInfo.self, forKey: .store)

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
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
