

import Foundation
public extension PlatformClient {
    /*
         Model: Category
         Used By: Catalog
     */

    class Category: Codable {
        public var priority: Int?

        public var modifiedOn: String?

        public var isGatedCategory: Bool?

        public var slug: String?

        public var tryouts: [String]?

        public var hierarchy: [Hierarchy]?

        public var marketplaces: CategoryMapping?

        public var createdBy: [String: Any]?

        public var uid: Int?

        public var gatedCategoryTypes: GatedCategoryTypes?

        public var synonyms: [String]?

        public var name: String

        public var media: Media2?

        public var id: String?

        public var modifiedBy: [String: Any]?

        public var isGstExempt: Bool?

        public var isActive: Bool

        public var level: Int

        public var departments: [Int]

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case priority

            case modifiedOn = "modified_on"

            case isGatedCategory = "is_gated_category"

            case slug

            case tryouts

            case hierarchy

            case marketplaces

            case createdBy = "created_by"

            case uid

            case gatedCategoryTypes = "gated_category_types"

            case synonyms

            case name

            case media

            case id = "_id"

            case modifiedBy = "modified_by"

            case isGstExempt = "is_gst_exempt"

            case isActive = "is_active"

            case level

            case departments

            case createdOn = "created_on"
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], gatedCategoryTypes: GatedCategoryTypes? = nil, hierarchy: [Hierarchy]? = nil, isActive: Bool, isGatedCategory: Bool? = nil, isGstExempt: Bool? = nil, level: Int, marketplaces: CategoryMapping? = nil, media: Media2? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil, id: String? = nil) {
            self.priority = priority

            self.modifiedOn = modifiedOn

            self.isGatedCategory = isGatedCategory

            self.slug = slug

            self.tryouts = tryouts

            self.hierarchy = hierarchy

            self.marketplaces = marketplaces

            self.createdBy = createdBy

            self.uid = uid

            self.gatedCategoryTypes = gatedCategoryTypes

            self.synonyms = synonyms

            self.name = name

            self.media = media

            self.id = id

            self.modifiedBy = modifiedBy

            self.isGstExempt = isGstExempt

            self.isActive = isActive

            self.level = level

            self.departments = departments

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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
                isGatedCategory = try container.decode(Bool.self, forKey: .isGatedCategory)

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
                tryouts = try container.decode([String].self, forKey: .tryouts)

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
                marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)

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

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                media = try container.decode(Media2.self, forKey: .media)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            level = try container.decode(Int.self, forKey: .level)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isGatedCategory, forKey: .isGatedCategory)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(gatedCategoryTypes, forKey: .gatedCategoryTypes)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isGstExempt, forKey: .isGstExempt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
