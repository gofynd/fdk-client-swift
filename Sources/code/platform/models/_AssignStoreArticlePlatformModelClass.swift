

import Foundation
public extension PlatformClient {
    /*
         Model: _AssignStoreArticle
         Used By: CompanyProfile
     */

    class _AssignStoreArticle: Codable {
        public var query: _ArticleQuery?

        public var quantity: Int?

        public var meta: [String: Any]?

        public var groupId: String?

        public var articleAssignment: _ArticleAssignment?

        public enum CodingKeys: String, CodingKey {
            case query

            case quantity

            case meta

            case groupId = "group_id"

            case articleAssignment = "article_assignment"
        }

        public init(articleAssignment: _ArticleAssignment? = nil, groupId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, query: _ArticleQuery? = nil) {
            self.query = query

            self.quantity = quantity

            self.meta = meta

            self.groupId = groupId

            self.articleAssignment = articleAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                query = try container.decode(_ArticleQuery.self, forKey: .query)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(_ArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }
}
