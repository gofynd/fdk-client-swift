

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Category
         Used By: Catalog
     */

    class Category: Codable {
        public var level: Int

        public var marketplaces: CategoryMapping?

        public var createdOn: String?

        public var modifiedOn: String?

        public var id: String?

        public var uid: Int?

        public var hierarchy: [Hierarchy]?

        public var modifiedBy: [String: Any]?

        public var name: String

        public var isActive: Bool

        public var synonyms: [String]?

        public var media: Media2?

        public var slug: String?

        public var createdBy: [String: Any]?

        public var departments: [Int]

        public var priority: Int?

        public var tryouts: [String]?

        public enum CodingKeys: String, CodingKey {
            case level

            case marketplaces

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case id

            case uid

            case hierarchy

            case modifiedBy = "modified_by"

            case name

            case isActive = "is_active"

            case synonyms

            case media

            case slug

            case createdBy = "created_by"

            case departments

            case priority

            case tryouts
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], hierarchy: [Hierarchy]? = nil, id: String? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media2? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil) {
            self.level = level

            self.marketplaces = marketplaces

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.id = id

            self.uid = uid

            self.hierarchy = hierarchy

            self.modifiedBy = modifiedBy

            self.name = name

            self.isActive = isActive

            self.synonyms = synonyms

            self.media = media

            self.slug = slug

            self.createdBy = createdBy

            self.departments = departments

            self.priority = priority

            self.tryouts = tryouts
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            level = try container.decode(Int.self, forKey: .level)

            do {
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

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
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

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

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Category
         Used By: Catalog
     */

    class Category: Codable {
        public var level: Int

        public var marketplaces: CategoryMapping?

        public var createdOn: String?

        public var modifiedOn: String?

        public var id: String?

        public var uid: Int?

        public var hierarchy: [Hierarchy]?

        public var modifiedBy: [String: Any]?

        public var name: String

        public var isActive: Bool

        public var synonyms: [String]?

        public var media: Media2?

        public var slug: String?

        public var createdBy: [String: Any]?

        public var departments: [Int]

        public var priority: Int?

        public var tryouts: [String]?

        public enum CodingKeys: String, CodingKey {
            case level

            case marketplaces

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case id

            case uid

            case hierarchy

            case modifiedBy = "modified_by"

            case name

            case isActive = "is_active"

            case synonyms

            case media

            case slug

            case createdBy = "created_by"

            case departments

            case priority

            case tryouts
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], hierarchy: [Hierarchy]? = nil, id: String? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media2? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil) {
            self.level = level

            self.marketplaces = marketplaces

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.id = id

            self.uid = uid

            self.hierarchy = hierarchy

            self.modifiedBy = modifiedBy

            self.name = name

            self.isActive = isActive

            self.synonyms = synonyms

            self.media = media

            self.slug = slug

            self.createdBy = createdBy

            self.departments = departments

            self.priority = priority

            self.tryouts = tryouts
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            level = try container.decode(Int.self, forKey: .level)

            do {
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

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
                hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

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

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
        }
    }
}
