

import Foundation

public extension PlatformClient.Order {
    /*
         Model: JioCodeUpsertDataSet
         Used By: Order
     */

    class JioCodeUpsertDataSet: Codable {
        public var jioCode: String?

        public var articleId: String?

        public var companyId: String?

        public var itemId: String?

        public enum CodingKeys: String, CodingKey {
            case jioCode = "jio_code"

            case articleId = "article_id"

            case companyId = "company_id"

            case itemId = "item_id"
        }

        public init(articleId: String? = nil, companyId: String? = nil, itemId: String? = nil, jioCode: String? = nil) {
            self.jioCode = jioCode

            self.articleId = articleId

            self.companyId = companyId

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jioCode = try container.decode(String.self, forKey: .jioCode)

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
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jioCode, forKey: .jioCode)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: JioCodeUpsertDataSet
         Used By: Order
     */

    class JioCodeUpsertDataSet: Codable {
        public var jioCode: String?

        public var articleId: String?

        public var companyId: String?

        public var itemId: String?

        public enum CodingKeys: String, CodingKey {
            case jioCode = "jio_code"

            case articleId = "article_id"

            case companyId = "company_id"

            case itemId = "item_id"
        }

        public init(articleId: String? = nil, companyId: String? = nil, itemId: String? = nil, jioCode: String? = nil) {
            self.jioCode = jioCode

            self.articleId = articleId

            self.companyId = companyId

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jioCode = try container.decode(String.self, forKey: .jioCode)

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
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jioCode, forKey: .jioCode)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
