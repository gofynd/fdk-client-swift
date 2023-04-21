

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductTemplate
         Used By: Catalog
     */

    class ProductTemplate: Codable {
        public var createdBy: [String: Any]?

        public var name: String?

        public var isPhysical: Bool

        public var departments: [String]?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var isExpirable: Bool

        public var categories: [String]?

        public var isArchived: Bool?

        public var logo: String?

        public var attributes: [String]?

        public var description: String?

        public var createdOn: String?

        public var modifiedBy: [String: Any]?

        public var slug: String

        public var tag: String?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case name

            case isPhysical = "is_physical"

            case departments

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case isExpirable = "is_expirable"

            case categories

            case isArchived = "is_archived"

            case logo

            case attributes

            case description

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case slug

            case tag
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String]? = nil, description: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            self.createdBy = createdBy

            self.name = name

            self.isPhysical = isPhysical

            self.departments = departments

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.isExpirable = isExpirable

            self.categories = categories

            self.isArchived = isArchived

            self.logo = logo

            self.attributes = attributes

            self.description = description

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.slug = slug

            self.tag = tag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                departments = try container.decode([String].self, forKey: .departments)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tag, forKey: .tag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductTemplate
         Used By: Catalog
     */

    class ProductTemplate: Codable {
        public var createdBy: [String: Any]?

        public var name: String?

        public var isPhysical: Bool

        public var departments: [String]?

        public var modifiedOn: String?

        public var isActive: Bool?

        public var isExpirable: Bool

        public var categories: [String]?

        public var isArchived: Bool?

        public var logo: String?

        public var attributes: [String]?

        public var description: String?

        public var createdOn: String?

        public var modifiedBy: [String: Any]?

        public var slug: String

        public var tag: String?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case name

            case isPhysical = "is_physical"

            case departments

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case isExpirable = "is_expirable"

            case categories

            case isArchived = "is_archived"

            case logo

            case attributes

            case description

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case slug

            case tag
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String]? = nil, description: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            self.createdBy = createdBy

            self.name = name

            self.isPhysical = isPhysical

            self.departments = departments

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.isExpirable = isExpirable

            self.categories = categories

            self.isArchived = isArchived

            self.logo = logo

            self.attributes = attributes

            self.description = description

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.slug = slug

            self.tag = tag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            do {
                departments = try container.decode([String].self, forKey: .departments)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                categories = try container.decode([String].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tag, forKey: .tag)
        }
    }
}
