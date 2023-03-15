

import Foundation
public extension ApplicationClient {
    /*
         Model: CatalogueOrderRequest
         Used By: Rewards
     */
    class CatalogueOrderRequest: Codable {
        public var articles: [RewardsArticle]?

        public enum CodingKeys: String, CodingKey {
            case articles
        }

        public init(articles: [RewardsArticle]? = nil) {
            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articles = try container.decode([RewardsArticle].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}
