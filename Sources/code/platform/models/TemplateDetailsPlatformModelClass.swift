

import Foundation
public extension PlatformClient {
    /*
         Model: TemplateDetails
         Used By: Catalog
     */

    class TemplateDetails: Codable {
        public var sizes: [String]?

        public var attributes: [String]?

        public var tag: String?

        public var categories: [String]?

        public var isPhysical: Bool

        public var isExpirable: Bool

        public var description: String?

        public var name: String?

        public var slug: String

        public var isActive: Bool?

        public var departments: [String]?

        public var logo: String?

        public var multiSize: Bool?

        public var attributeSchema: [AttributeSchemaOverride]?

        public var id: String?

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case attributes

            case tag

            case categories

            case isPhysical = "is_physical"

            case isExpirable = "is_expirable"

            case description

            case name

            case slug

            case isActive = "is_active"

            case departments

            case logo

            case multiSize = "multi_size"

            case attributeSchema = "attribute_schema"

            case id

            case isArchived = "is_archived"
        }

        public init(attributes: [String]? = nil, attributeSchema: [AttributeSchemaOverride]? = nil, categories: [String]? = nil, departments: [String]? = nil, description: String? = nil, id: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, multiSize: Bool? = nil, name: String? = nil, sizes: [String]? = nil, slug: String, tag: String? = nil) {
            self.sizes = sizes

            self.attributes = attributes

            self.tag = tag

            self.categories = categories

            self.isPhysical = isPhysical

            self.isExpirable = isExpirable

            self.description = description

            self.name = name

            self.slug = slug

            self.isActive = isActive

            self.departments = departments

            self.logo = logo

            self.multiSize = multiSize

            self.attributeSchema = attributeSchema

            self.id = id

            self.isArchived = isArchived
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([String].self, forKey: .sizes)

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
                tag = try container.decode(String.self, forKey: .tag)

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

            isPhysical = try container.decode(Bool.self, forKey: .isPhysical)

            isExpirable = try container.decode(Bool.self, forKey: .isExpirable)

            do {
                description = try container.decode(String.self, forKey: .description)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([String].self, forKey: .departments)

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
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributeSchema = try container.decode([AttributeSchemaOverride].self, forKey: .attributeSchema)

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
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(sizes, forKey: .sizes)

            try? container.encode(attributes, forKey: .attributes)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encode(categories, forKey: .categories)

            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)

            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(departments, forKey: .departments)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(attributeSchema, forKey: .attributeSchema)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }
}
