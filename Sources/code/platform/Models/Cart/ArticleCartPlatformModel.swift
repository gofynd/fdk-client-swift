

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: Article
         Used By: Cart
     */

    class Article: Codable {
        public var type: String?

        public var meta: [String: Any]?

        public var value: Double?

        public var code: String?

        public var articleId: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case meta

            case value

            case code

            case articleId = "article_id"
        }

        public init(articleId: String? = nil, code: String? = nil, meta: [String: Any]? = nil, type: String? = nil, value: Double? = nil) {
            self.type = type

            self.meta = meta

            self.value = value

            self.code = code

            self.articleId = articleId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

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
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

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

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(articleId, forKey: .articleId)
        }
    }
}
