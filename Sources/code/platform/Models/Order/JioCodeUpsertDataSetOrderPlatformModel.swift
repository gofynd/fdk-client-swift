

import Foundation

public extension PlatformClient.Order {
    /*
         Model: JioCodeUpsertDataSet
         Used By: Order
     */

    class JioCodeUpsertDataSet: Codable {
        public var itemId: String?

        public var companyId: String?

        public var articleId: String?

        public var jioCode: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case companyId = "company_id"

            case articleId = "article_id"

            case jioCode = "jio_code"
        }

        public init(articleId: String? = nil, companyId: String? = nil, itemId: String? = nil, jioCode: String? = nil) {
            self.itemId = itemId

            self.companyId = companyId

            self.articleId = articleId

            self.jioCode = jioCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

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
                jioCode = try container.decode(String.self, forKey: .jioCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(jioCode, forKey: .jioCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: JioCodeUpsertDataSet
         Used By: Order
     */

    class JioCodeUpsertDataSet: Codable {
        public var itemId: String?

        public var companyId: String?

        public var articleId: String?

        public var jioCode: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case companyId = "company_id"

            case articleId = "article_id"

            case jioCode = "jio_code"
        }

        public init(articleId: String? = nil, companyId: String? = nil, itemId: String? = nil, jioCode: String? = nil) {
            self.itemId = itemId

            self.companyId = companyId

            self.articleId = articleId

            self.jioCode = jioCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

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
                jioCode = try container.decode(String.self, forKey: .jioCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(jioCode, forKey: .jioCode)
        }
    }
}
