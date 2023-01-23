

import Foundation
public extension ApplicationClient {
    /*
         Model: CategoryRequestSchema
         Used By: Content
     */
    class CategoryRequestSchema: Codable {
        public var slug: String?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case title
        }

        public init(slug: String? = nil, title: String? = nil) {
            self.slug = slug

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
