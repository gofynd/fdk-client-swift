

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var departments: [String]?

        public var isArchived: Bool?

        public var tag: String?

        public var logo: String?

        public var categories: [String]?

        public var isActive: Bool?

        public var attributes: [String]?

        public var description: String?

        public var id: String?

        public var slug: String

        public var isPhysical: Bool

        public var isExpirable: Bool

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case departments

            case isArchived = "is_archived"

            case tag

            case logo

            case categories

            case isActive = "is_active"

            case attributes

            case description

            case id

            case slug

            case isPhysical = "is_physical"

            case isExpirable = "is_expirable"

            case name
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, departments: [String]? = nil, description: String? = nil, id: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            self.departments = departments

            self.isArchived = isArchived

            self.tag = tag

            self.logo = logo

            self.categories = categories

            self.isActive = isActive

            self.attributes = attributes

            self.description = description

            self.id = id

            self.slug = slug

            self.isPhysical = isPhysical

            self.isExpirable = isExpirable

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                departments = try container.decode([String].self, forKey: .departments)

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
                tag = try container.decode(String.self, forKey: .tag)

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
                categories = try container.decode([String].self, forKey: .categories)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var departments: [String]?

        public var isArchived: Bool?

        public var tag: String?

        public var logo: String?

        public var categories: [String]?

        public var isActive: Bool?

        public var attributes: [String]?

        public var description: String?

        public var id: String?

        public var slug: String

        public var isPhysical: Bool

        public var isExpirable: Bool

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case departments

            case isArchived = "is_archived"

            case tag

            case logo

            case categories

            case isActive = "is_active"

            case attributes

            case description

            case id

            case slug

            case isPhysical = "is_physical"

            case isExpirable = "is_expirable"

            case name
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, departments: [String]? = nil, description: String? = nil, id: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            self.departments = departments

            self.isArchived = isArchived

            self.tag = tag

            self.logo = logo

            self.categories = categories

            self.isActive = isActive

            self.attributes = attributes

            self.description = description

            self.id = id

            self.slug = slug

            self.isPhysical = isPhysical

            self.isExpirable = isExpirable

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                departments = try container.decode([String].self, forKey: .departments)

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
                tag = try container.decode(String.self, forKey: .tag)

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
                categories = try container.decode([String].self, forKey: .categories)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
