

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductSizePriceResponse
         Used By: Catalog
     */

    class ProductSizePriceResponse: Codable {
        public var quantity: Int?

        public var store: Store?

        public var articleAssignment: ArticleAssignment?

        public var seller: Seller?

        public var pincode: Int?

        public var articleId: String?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case store

            case articleAssignment = "article_assignment"

            case seller

            case pincode

            case articleId = "article_id"
        }

        public init(articleAssignment: ArticleAssignment? = nil, articleId: String? = nil, pincode: Int? = nil, quantity: Int? = nil, seller: Seller? = nil, store: Store? = nil) {
            self.quantity = quantity

            self.store = store

            self.articleAssignment = articleAssignment

            self.seller = seller

            self.pincode = pincode

            self.articleId = articleId
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
                store = try container.decode(Store.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(Seller.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(articleId, forKey: .articleId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductSizePriceResponse
         Used By: Catalog
     */

    class ProductSizePriceResponse: Codable {
        public var quantity: Int?

        public var store: Store?

        public var articleAssignment: ArticleAssignment?

        public var seller: Seller?

        public var pincode: Int?

        public var articleId: String?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case store

            case articleAssignment = "article_assignment"

            case seller

            case pincode

            case articleId = "article_id"
        }

        public init(articleAssignment: ArticleAssignment? = nil, articleId: String? = nil, pincode: Int? = nil, quantity: Int? = nil, seller: Seller? = nil, store: Store? = nil) {
            self.quantity = quantity

            self.store = store

            self.articleAssignment = articleAssignment

            self.seller = seller

            self.pincode = pincode

            self.articleId = articleId
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
                store = try container.decode(Store.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(Seller.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(articleId, forKey: .articleId)
        }
    }
}