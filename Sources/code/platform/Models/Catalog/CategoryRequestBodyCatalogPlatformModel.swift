

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CategoryRequestBody
         Used By: Catalog
     */

    class CategoryRequestBody: Codable {
        public var priority: Int?

        public var level: Int

        public var slug: String?

        public var isActive: Bool

        public var tryouts: [String]?

        public var name: String

        public var departments: [Int]

        public var synonyms: [String]?

        public var marketplaces: CategoryMapping?

        public var media: Media3?

        public var hierarchy: [Hierarchy]?

        public enum CodingKeys: String, CodingKey {
            case priority

            case level

            case slug

            case isActive = "is_active"

            case tryouts

            case name

            case departments

            case synonyms

            case marketplaces

            case media

            case hierarchy
        }

        public init(departments: [Int], hierarchy: [Hierarchy]? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media3? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil) {
            self.priority = priority

            self.level = level

            self.slug = slug

            self.isActive = isActive

            self.tryouts = tryouts

            self.name = name

            self.departments = departments

            self.synonyms = synonyms

            self.marketplaces = marketplaces

            self.media = media

            self.hierarchy = hierarchy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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
                media = try container.decode(Media3.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CategoryRequestBody
         Used By: Catalog
     */

    class CategoryRequestBody: Codable {
        public var priority: Int?

        public var level: Int

        public var slug: String?

        public var isActive: Bool

        public var tryouts: [String]?

        public var name: String

        public var departments: [Int]

        public var synonyms: [String]?

        public var marketplaces: CategoryMapping?

        public var media: Media3?

        public var hierarchy: [Hierarchy]?

        public enum CodingKeys: String, CodingKey {
            case priority

            case level

            case slug

            case isActive = "is_active"

            case tryouts

            case name

            case departments

            case synonyms

            case marketplaces

            case media

            case hierarchy
        }

        public init(departments: [Int], hierarchy: [Hierarchy]? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media3? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil) {
            self.priority = priority

            self.level = level

            self.slug = slug

            self.isActive = isActive

            self.tryouts = tryouts

            self.name = name

            self.departments = departments

            self.synonyms = synonyms

            self.marketplaces = marketplaces

            self.media = media

            self.hierarchy = hierarchy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            level = try container.decode(Int.self, forKey: .level)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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
                media = try container.decode(Media3.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
        }
    }
}
