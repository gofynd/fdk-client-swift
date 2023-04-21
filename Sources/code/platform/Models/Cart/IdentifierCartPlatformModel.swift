

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: Identifier
         Used By: Cart
     */

    class Identifier: Codable {
        public var storeId: [Int]?

        public var categoryId: [Int]?

        public var itemId: [Int]?

        public var userId: [String]?

        public var emailDomain: [String]?

        public var companyId: [Int]?

        public var excludeBrandId: [Int]?

        public var articleId: [String]?

        public var brandId: [Int]?

        public var collectionId: [String]?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case categoryId = "category_id"

            case itemId = "item_id"

            case userId = "user_id"

            case emailDomain = "email_domain"

            case companyId = "company_id"

            case excludeBrandId = "exclude_brand_id"

            case articleId = "article_id"

            case brandId = "brand_id"

            case collectionId = "collection_id"
        }

        public init(articleId: [String]? = nil, brandId: [Int]? = nil, categoryId: [Int]? = nil, collectionId: [String]? = nil, companyId: [Int]? = nil, emailDomain: [String]? = nil, excludeBrandId: [Int]? = nil, itemId: [Int]? = nil, storeId: [Int]? = nil, userId: [String]? = nil) {
            self.storeId = storeId

            self.categoryId = categoryId

            self.itemId = itemId

            self.userId = userId

            self.emailDomain = emailDomain

            self.companyId = companyId

            self.excludeBrandId = excludeBrandId

            self.articleId = articleId

            self.brandId = brandId

            self.collectionId = collectionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeId = try container.decode([Int].self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryId = try container.decode([Int].self, forKey: .categoryId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode([Int].self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode([String].self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emailDomain = try container.decode([String].self, forKey: .emailDomain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode([Int].self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                excludeBrandId = try container.decode([Int].self, forKey: .excludeBrandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode([String].self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode([Int].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collectionId = try container.decode([String].self, forKey: .collectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(categoryId, forKey: .categoryId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(emailDomain, forKey: .emailDomain)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(excludeBrandId, forKey: .excludeBrandId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(collectionId, forKey: .collectionId)
        }
    }
}
