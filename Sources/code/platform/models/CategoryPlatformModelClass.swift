

import Foundation
public extension PlatformClient {
    /*
         Model: Category
         Used By: Catalog
     */

    class Category: Codable {
        public var modifiedBy: [String: Any]?

        public var isGstExempt: Bool?

        public var slug: String?

        public var marketplaces: CategoryMapping?

        public var uid: Int?

        public var isGatedCategory: Bool?

        public var hierarchy: [Hierarchy]?

        public var level: Int

        public var isActive: Bool

        public var tryouts: [String]?

        public var media: Media2?

        public var gatedCategoryTypes: GatedCategoryTypes?

        public var createdOn: String?

        public var name: String

        public var createdBy: [String: Any]?

        public var priority: Int?

        public var synonyms: [String]?

        public var departments: [Int]

        public var id: String?

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case isGstExempt = "is_gst_exempt"

            case slug

            case marketplaces

            case uid

            case isGatedCategory = "is_gated_category"

            case hierarchy

            case level

            case isActive = "is_active"

            case tryouts

            case media

            case gatedCategoryTypes = "gated_category_types"

            case createdOn = "created_on"

            case name

            case createdBy = "created_by"

            case priority

            case synonyms

            case departments

            case id = "_id"

            case modifiedOn = "modified_on"
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], gatedCategoryTypes: GatedCategoryTypes? = nil, hierarchy: [Hierarchy]? = nil, isActive: Bool, isGatedCategory: Bool? = nil, isGstExempt: Bool? = nil, level: Int, marketplaces: CategoryMapping? = nil, media: Media2? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil, id: String? = nil) {
            self.modifiedBy = modifiedBy

            self.isGstExempt = isGstExempt

            self.slug = slug

            self.marketplaces = marketplaces

            self.uid = uid

            self.isGatedCategory = isGatedCategory

            self.hierarchy = hierarchy

            self.level = level

            self.isActive = isActive

            self.tryouts = tryouts

            self.media = media

            self.gatedCategoryTypes = gatedCategoryTypes

            self.createdOn = createdOn

            self.name = name

            self.createdBy = createdBy

            self.priority = priority

            self.synonyms = synonyms

            self.departments = departments

            self.id = id

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isGstExempt = try container.decode(Bool.self, forKey: .isGstExempt)

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
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

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
                isGatedCategory = try container.decode(Bool.self, forKey: .isGatedCategory)

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

            level = try container.decode(Int.self, forKey: .level)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

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
                gatedCategoryTypes = try container.decode(GatedCategoryTypes.self, forKey: .gatedCategoryTypes)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                id = try container.decode(String.self, forKey: .id)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isGstExempt, forKey: .isGstExempt)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isGatedCategory, forKey: .isGatedCategory)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(gatedCategoryTypes, forKey: .gatedCategoryTypes)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
