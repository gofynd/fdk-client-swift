

import Foundation
public extension PlatformClient {
    /*
         Model: ProductArticle
         Used By: Cart
     */

    class ProductArticle: Codable {
        public var extraMeta: [String: Any]?

        public var size: String?

        public var type: String?

        public var store: BaseInfo?

        public var price: ArticlePriceInfo?

        public var uid: String?

        public var quantity: Int?

        public var seller: BaseInfo?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case size

            case type

            case store

            case price

            case uid

            case quantity

            case seller
        }

        public init(extraMeta: [String: Any]? = nil, price: ArticlePriceInfo? = nil, quantity: Int? = nil, seller: BaseInfo? = nil, size: String? = nil, store: BaseInfo? = nil, type: String? = nil, uid: String? = nil) {
            self.extraMeta = extraMeta

            self.size = size

            self.type = type

            self.store = store

            self.price = price

            self.uid = uid

            self.quantity = quantity

            self.seller = seller
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
                size = try container.decode(String.self, forKey: .size)

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
                store = try container.decode(BaseInfo.self, forKey: .store)

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
                seller = try container.decode(BaseInfo.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(seller, forKey: .seller)
        }
    }
}
