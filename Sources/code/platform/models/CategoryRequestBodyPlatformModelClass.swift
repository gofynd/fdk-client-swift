

import Foundation
public extension PlatformClient {
    /*
         Model: CategoryRequestBody
         Used By: Catalog
     */

    class CategoryRequestBody: Codable {
        public var slug: String?

        public var level: Int

        public var departments: [Int]

        public var tryouts: [String]?

        public var marketplaces: CategoryMapping?

        public var priority: Int?

        public var synonyms: [String]?

        public var media: Media2?

        public var isActive: Bool

        public var name: String

        public var hierarchy: [Hierarchy]?

        public enum CodingKeys: String, CodingKey {
            case slug

            case level

            case departments

            case tryouts

            case marketplaces

            case priority

            case synonyms

            case media

            case isActive = "is_active"

            case name

            case hierarchy
        }

        public init(departments: [Int], hierarchy: [Hierarchy]? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media2? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil) {
            self.slug = slug

            self.level = level

            self.departments = departments

            self.tryouts = tryouts

            self.marketplaces = marketplaces

            self.priority = priority

            self.synonyms = synonyms

            self.media = media

            self.isActive = isActive

            self.name = name

            self.hierarchy = hierarchy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode(Media2.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)

            do {
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
        }
    }
}
