

import Foundation
public extension PlatformClient {
    /*
         Model: CategoriesResponse
         Used By: Catalog
     */

    class CategoriesResponse: Codable {
        public var slugKey: String?

        public var uid: Int?

        public var name: String?

        public var templateSlug: String?

        public enum CodingKeys: String, CodingKey {
            case slugKey = "slug_key"

            case uid

            case name

            case templateSlug = "template_slug"
        }

        public init(name: String? = nil, slugKey: String? = nil, templateSlug: String? = nil, uid: Int? = nil) {
            self.slugKey = slugKey

            self.uid = uid

            self.name = name

            self.templateSlug = templateSlug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slugKey = try container.decode(String.self, forKey: .slugKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            do {
                templateSlug = try container.decode(String.self, forKey: .templateSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(templateSlug, forKey: .templateSlug)
        }
    }
}
