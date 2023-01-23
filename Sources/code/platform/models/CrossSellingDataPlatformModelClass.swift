

import Foundation
public extension PlatformClient {
    /*
         Model: CrossSellingData
         Used By: Catalog
     */

    class CrossSellingData: Codable {
        public var products: Int?

        public var articles: Int?

        public enum CodingKeys: String, CodingKey {
            case products

            case articles
        }

        public init(articles: Int? = nil, products: Int? = nil) {
            self.products = products

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                products = try container.decode(Int.self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articles = try container.decode(Int.self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}
