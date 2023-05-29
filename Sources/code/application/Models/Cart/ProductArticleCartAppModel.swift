

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: ProductArticle
         Used By: Cart
     */
    class ProductArticle: Codable {
        public var productGroupTags: [String]?

        public var seller: BaseInfo?

        public var store: StoreInfo?

        public var quantity: Int?

        public var uid: String?

        public var price: ArticlePriceInfo?

        public var sellerIdentifier: String?

        public var giftCard: [String: Any]?

        public var parentItemIdentifiers: [String: Any]?

        public var extraMeta: [String: Any]?

        public var customJson: [String: Any]?

        public var identifier: [String: Any]?

        public var isGiftVisible: Bool?

        public var size: String?

        public var cartItemMeta: [String: Any]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case productGroupTags = "product_group_tags"

            case seller

            case store

            case quantity

            case uid

            case price

            case sellerIdentifier = "seller_identifier"

            case giftCard = "gift_card"

            case parentItemIdentifiers = "parent_item_identifiers"

            case extraMeta = "extra_meta"

            case customJson = "_custom_json"

            case identifier

            case isGiftVisible = "is_gift_visible"

            case size

            case cartItemMeta = "cart_item_meta"

            case type
        }

        public init(cartItemMeta: [String: Any]? = nil, extraMeta: [String: Any]? = nil, giftCard: [String: Any]? = nil, identifier: [String: Any]? = nil, isGiftVisible: Bool? = nil, parentItemIdentifiers: [String: Any]? = nil, price: ArticlePriceInfo? = nil, productGroupTags: [String]? = nil, quantity: Int? = nil, seller: BaseInfo? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: StoreInfo? = nil, type: String? = nil, uid: String? = nil, customJson: [String: Any]? = nil) {
            self.productGroupTags = productGroupTags

            self.seller = seller

            self.store = store

            self.quantity = quantity

            self.uid = uid

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.giftCard = giftCard

            self.parentItemIdentifiers = parentItemIdentifiers

            self.extraMeta = extraMeta

            self.customJson = customJson

            self.identifier = identifier

            self.isGiftVisible = isGiftVisible

            self.size = size

            self.cartItemMeta = cartItemMeta

            self.type = type
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
                store = try container.decode(StoreInfo.self, forKey: .store)

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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftCard = try container.decode([String: Any].self, forKey: .giftCard)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isGiftVisible = try container.decode(Bool.self, forKey: .isGiftVisible)

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

            do {
                cartItemMeta = try container.decode([String: Any].self, forKey: .cartItemMeta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(giftCard, forKey: .giftCard)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isGiftVisible, forKey: .isGiftVisible)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cartItemMeta, forKey: .cartItemMeta)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
