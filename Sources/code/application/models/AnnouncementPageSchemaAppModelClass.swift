

import Foundation
public extension ApplicationClient {
    /*
         Model: AnnouncementPageSchema
         Used By: Content
     */
    class AnnouncementPageSchema: Codable {
        public var pageSlug: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case pageSlug = "page_slug"

            case type
        }

        public init(pageSlug: String? = nil, type: String? = nil) {
            self.pageSlug = pageSlug

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageSlug = try container.decode(String.self, forKey: .pageSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSlug, forKey: .pageSlug)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
