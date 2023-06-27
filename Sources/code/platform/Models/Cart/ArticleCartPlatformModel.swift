

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: Article
         Used By: Cart
     */

    class Article: Codable {
        public var code: String?

        public var value: Double?

        public var meta: [String: Any]?

        public var articleId: String

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case value

            case meta

            case articleId = "article_id"

            case type
        }

        public init(articleId: String, code: String? = nil, meta: [String: Any]? = nil, type: String? = nil, value: Double? = nil) {
            self.code = code

            self.value = value

            self.meta = meta

            self.articleId = articleId

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

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

            articleId = try container.decode(String.self, forKey: .articleId)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
