

import Foundation
public extension PlatformClient {
    /*
         Model: CatalogInsightBrand
         Used By: Catalog
     */

    class CatalogInsightBrand: Codable {
        public var availableArticles: Int?

        public var totalArticles: Int?

        public var availableSizes: Int?

        public var articleFreshness: Int?

        public var totalSizes: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case availableArticles = "available_articles"

            case totalArticles = "total_articles"

            case availableSizes = "available_sizes"

            case articleFreshness = "article_freshness"

            case totalSizes = "total_sizes"

            case name
        }

        public init(articleFreshness: Int? = nil, availableArticles: Int? = nil, availableSizes: Int? = nil, name: String? = nil, totalArticles: Int? = nil, totalSizes: Int? = nil) {
            self.availableArticles = availableArticles

            self.totalArticles = totalArticles

            self.availableSizes = availableSizes

            self.articleFreshness = articleFreshness

            self.totalSizes = totalSizes

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availableArticles = try container.decode(Int.self, forKey: .availableArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalArticles = try container.decode(Int.self, forKey: .totalArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableSizes = try container.decode(Int.self, forKey: .availableSizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleFreshness = try container.decode(Int.self, forKey: .articleFreshness)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalSizes = try container.decode(Int.self, forKey: .totalSizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availableArticles, forKey: .availableArticles)

            try? container.encodeIfPresent(totalArticles, forKey: .totalArticles)

            try? container.encodeIfPresent(availableSizes, forKey: .availableSizes)

            try? container.encodeIfPresent(articleFreshness, forKey: .articleFreshness)

            try? container.encodeIfPresent(totalSizes, forKey: .totalSizes)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
