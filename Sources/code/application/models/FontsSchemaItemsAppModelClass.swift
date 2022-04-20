

import Foundation
public extension ApplicationClient {
    /*
         Model: FontsSchemaItems
         Used By: Theme
     */
    class FontsSchemaItems: Codable {
        public var family: String?

        public var variants: [String]?

        public var subsets: [String]?

        public var version: String?

        public var lastModified: String?

        public var files: FontsSchemaItemsFiles?

        public var category: String?

        public var kind: String?

        public enum CodingKeys: String, CodingKey {
            case family

            case variants

            case subsets

            case version

            case lastModified = "last_modified"

            case files

            case category

            case kind
        }

        public init(category: String? = nil, family: String? = nil, files: FontsSchemaItemsFiles? = nil, kind: String? = nil, lastModified: String? = nil, subsets: [String]? = nil, variants: [String]? = nil, version: String? = nil) {
            self.family = family

            self.variants = variants

            self.subsets = subsets

            self.version = version

            self.lastModified = lastModified

            self.files = files

            self.category = category

            self.kind = kind
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                family = try container.decode(String.self, forKey: .family)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subsets = try container.decode([String].self, forKey: .subsets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode(FontsSchemaItemsFiles.self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(family, forKey: .family)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(subsets, forKey: .subsets)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(kind, forKey: .kind)
        }
    }
}
