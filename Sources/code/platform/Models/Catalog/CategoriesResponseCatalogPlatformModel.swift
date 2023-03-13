

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CategoriesResponse
         Used By: Catalog
     */

    class CategoriesResponse: Codable {
        public var slugKey: String?

        public var templateSlug: String?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slugKey = "slug_key"

            case templateSlug = "template_slug"

            case name

            case uid
        }

        public init(name: String? = nil, slugKey: String? = nil, templateSlug: String? = nil, uid: Int? = nil) {
            self.slugKey = slugKey

            self.templateSlug = templateSlug

            self.name = name

            self.uid = uid
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
                templateSlug = try container.decode(String.self, forKey: .templateSlug)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(templateSlug, forKey: .templateSlug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CategoriesResponse
         Used By: Catalog
     */

    class CategoriesResponse: Codable {
        public var slugKey: String?

        public var templateSlug: String?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slugKey = "slug_key"

            case templateSlug = "template_slug"

            case name

            case uid
        }

        public init(name: String? = nil, slugKey: String? = nil, templateSlug: String? = nil, uid: Int? = nil) {
            self.slugKey = slugKey

            self.templateSlug = templateSlug

            self.name = name

            self.uid = uid
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
                templateSlug = try container.decode(String.self, forKey: .templateSlug)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(templateSlug, forKey: .templateSlug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
