

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeMasterSerializer
         Used By: Catalog
     */

    class AttributeMasterSerializer: Codable {
        public var description: String?

        public var createdBy: [String: Any]?

        public var logo: String?

        public var details: AttributeMasterDetails

        public var filters: AttributeMasterFilter

        public var departments: [String]

        public var createdOn: String?

        public var name: String?

        public var slug: String

        public var isNested: Bool?

        public var schema: AttributeMaster

        public var suggestion: String?

        public var unit: String?

        public var modifiedOn: String?

        public var enabledForEndConsumer: Bool?

        public var rawKey: String?

        public var variant: Bool?

        public var synonyms: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case description

            case createdBy = "created_by"

            case logo

            case details

            case filters

            case departments

            case createdOn = "created_on"

            case name

            case slug

            case isNested = "is_nested"

            case schema

            case suggestion

            case unit

            case modifiedOn = "modified_on"

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case rawKey = "raw_key"

            case variant

            case synonyms

            case modifiedBy = "modified_by"

            case tags
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String], description: String? = nil, details: AttributeMasterDetails, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter, isNested: Bool? = nil, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, rawKey: String? = nil, schema: AttributeMaster, slug: String, suggestion: String? = nil, synonyms: [String: Any]? = nil, tags: [String]? = nil, unit: String? = nil, variant: Bool? = nil) {
            self.description = description

            self.createdBy = createdBy

            self.logo = logo

            self.details = details

            self.filters = filters

            self.departments = departments

            self.createdOn = createdOn

            self.name = name

            self.slug = slug

            self.isNested = isNested

            self.schema = schema

            self.suggestion = suggestion

            self.unit = unit

            self.modifiedOn = modifiedOn

            self.enabledForEndConsumer = enabledForEndConsumer

            self.rawKey = rawKey

            self.variant = variant

            self.synonyms = synonyms

            self.modifiedBy = modifiedBy

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            details = try container.decode(AttributeMasterDetails.self, forKey: .details)

            filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

            departments = try container.decode([String].self, forKey: .departments)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                isNested = try container.decode(Bool.self, forKey: .isNested)

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

            do {
                enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawKey = try container.decode(String.self, forKey: .rawKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variant = try container.decode(Bool.self, forKey: .variant)

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

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(suggestion, forKey: .suggestion)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(rawKey, forKey: .rawKey)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
