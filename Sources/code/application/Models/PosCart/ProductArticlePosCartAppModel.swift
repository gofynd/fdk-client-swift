

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: ProductArticle
         Used By: PosCart
     */
    class ProductArticle: Codable {
        public var quantity: Int?

        public var parentItemIdentifiers: [String: Any]?

        public var seller: BaseInfo?

        public var extraMeta: [String: Any]?

        public var uid: String?

        public var sellerIdentifier: String?

        public var customJson: [String: Any]?

        public var store: StoreInfo?

        public var type: String?

        public var size: String?

        public var identifier: [String: Any]?

        public var price: ArticlePriceInfo?

        public var productGroupTags: [String]?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case parentItemIdentifiers = "parent_item_identifiers"

            case seller

            case extraMeta = "extra_meta"

            case uid

            case sellerIdentifier = "seller_identifier"

            case customJson = "_custom_json"

            case store

            case type

            case size

            case identifier

            case price

            case productGroupTags = "product_group_tags"
        }

        public init(extraMeta: [String: Any]? = nil, identifier: [String: Any]? = nil, parentItemIdentifiers: [String: Any]? = nil, price: ArticlePriceInfo? = nil, productGroupTags: [String]? = nil, quantity: Int? = nil, seller: BaseInfo? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: StoreInfo? = nil, type: String? = nil, uid: String? = nil, customJson: [String: Any]? = nil) {
            self.quantity = quantity

            self.parentItemIdentifiers = parentItemIdentifiers

            self.seller = seller

            self.extraMeta = extraMeta

            self.uid = uid

            self.sellerIdentifier = sellerIdentifier

            self.customJson = customJson

            self.store = store

            self.type = type

            self.size = size

            self.identifier = identifier

            self.price = price

            self.productGroupTags = productGroupTags
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
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                store = try container.decode(StoreInfo.self, forKey: .store)

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
                size = try container.decode(String.self, forKey: .size)

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
                price = try container.decode(ArticlePriceInfo.self, forKey: .price)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
        }
    }
}
