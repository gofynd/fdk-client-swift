

import Foundation
public extension PlatformClient {
    /*
         Model: _AssignStoreArticle
         Used By: CompanyProfile
     */

    class _AssignStoreArticle: Codable {
        public var articleAssignment: _ArticleAssignment?

        public var groupId: String?

        public var query: _ArticleQuery?

        public var meta: [String: Any]?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case articleAssignment = "article_assignment"

            case groupId = "group_id"

            case query

            case meta

            case quantity
        }

        public init(articleAssignment: _ArticleAssignment? = nil, groupId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, query: _ArticleQuery? = nil) {
            self.articleAssignment = articleAssignment

            self.groupId = groupId

            self.query = query

            self.meta = meta

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleAssignment = try container.decode(_ArticleAssignment.self, forKey: .articleAssignment)

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
                query = try container.decode(_ArticleQuery.self, forKey: .query)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
