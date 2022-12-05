

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeMasterSerializer
         Used By: Catalog
     */

    class AttributeMasterSerializer: Codable {
        public var createdOn: String?

        public var schema: AttributeMaster

        public var suggestion: String?

        public var name: String?

        public var filters: AttributeMasterFilter

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var description: String?

        public var tags: [String]?

        public var logo: String?

        public var enabledForEndConsumer: Bool?

        public var isNested: Bool?

        public var details: AttributeMasterDetails

        public var unit: String?

        public var modifiedOn: String?

        public var departments: [String]

        public var variant: Bool?

        public var slug: String

        public var rawKey: String?

        public var synonyms: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case schema

            case suggestion

            case name

            case filters

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case description

            case tags

            case logo

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case isNested = "is_nested"

            case details

            case unit

            case modifiedOn = "modified_on"

            case departments

            case variant

            case slug

            case rawKey = "raw_key"

            case synonyms
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String], description: String? = nil, details: AttributeMasterDetails, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter, isNested: Bool? = nil, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, rawKey: String? = nil, schema: AttributeMaster, slug: String, suggestion: String? = nil, synonyms: [String: Any]? = nil, tags: [String]? = nil, unit: String? = nil, variant: Bool? = nil) {
            self.createdOn = createdOn

            self.schema = schema

            self.suggestion = suggestion

            self.name = name

            self.filters = filters

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.description = description

            self.tags = tags

            self.logo = logo

            self.enabledForEndConsumer = enabledForEndConsumer

            self.isNested = isNested

            self.details = details

            self.unit = unit

            self.modifiedOn = modifiedOn

            self.departments = departments

            self.variant = variant

            self.slug = slug

            self.rawKey = rawKey

            self.synonyms = synonyms
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            schema = try container.decode(AttributeMaster.self, forKey: .schema)

            do {
                suggestion = try container.decode(String.self, forKey: .suggestion)

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

            filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isNested = try container.decode(Bool.self, forKey: .isNested)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            details = try container.decode(AttributeMasterDetails.self, forKey: .details)

            do {
                unit = try container.decode(String.self, forKey: .unit)

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

            departments = try container.decode([String].self, forKey: .departments)

            do {
                variant = try container.decode(Bool.self, forKey: .variant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                rawKey = try container.decode(String.self, forKey: .rawKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String: Any].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(suggestion, forKey: .suggestion)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(rawKey, forKey: .rawKey)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
        }
    }
}
