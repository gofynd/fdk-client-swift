

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeMasterSerializer
         Used By: Catalog
     */

    class AttributeMasterSerializer: Codable {
        public var variant: Bool?

        public var modifiedBy: [String: Any]?

        public var synonyms: [String: Any]?

        public var suggestion: String?

        public var rawKey: String?

        public var description: String?

        public var slug: String

        public var modifiedOn: String?

        public var unit: String?

        public var schema: AttributeMaster

        public var logo: String?

        public var createdBy: [String: Any]?

        public var departments: [String]

        public var details: AttributeMasterDetails

        public var name: String?

        public var filters: AttributeMasterFilter

        public var tags: [String]?

        public var isNested: Bool?

        public var createdOn: String?

        public var enabledForEndConsumer: Bool?

        public enum CodingKeys: String, CodingKey {
            case variant

            case modifiedBy = "modified_by"

            case synonyms

            case suggestion

            case rawKey = "raw_key"

            case description

            case slug

            case modifiedOn = "modified_on"

            case unit

            case schema

            case logo

            case createdBy = "created_by"

            case departments

            case details

            case name

            case filters

            case tags

            case isNested = "is_nested"

            case createdOn = "created_on"

            case enabledForEndConsumer = "enabled_for_end_consumer"
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String], description: String? = nil, details: AttributeMasterDetails, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter, isNested: Bool? = nil, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, rawKey: String? = nil, schema: AttributeMaster, slug: String, suggestion: String? = nil, synonyms: [String: Any]? = nil, tags: [String]? = nil, unit: String? = nil, variant: Bool? = nil) {
            self.variant = variant

            self.modifiedBy = modifiedBy

            self.synonyms = synonyms

            self.suggestion = suggestion

            self.rawKey = rawKey

            self.description = description

            self.slug = slug

            self.modifiedOn = modifiedOn

            self.unit = unit

            self.schema = schema

            self.logo = logo

            self.createdBy = createdBy

            self.departments = departments

            self.details = details

            self.name = name

            self.filters = filters

            self.tags = tags

            self.isNested = isNested

            self.createdOn = createdOn

            self.enabledForEndConsumer = enabledForEndConsumer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                variant = try container.decode(Bool.self, forKey: .variant)

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
                synonyms = try container.decode([String: Any].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                suggestion = try container.decode(String.self, forKey: .suggestion)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            schema = try container.decode(AttributeMaster.self, forKey: .schema)

            do {
                logo = try container.decode(String.self, forKey: .logo)

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

            departments = try container.decode([String].self, forKey: .departments)

            details = try container.decode(AttributeMasterDetails.self, forKey: .details)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(suggestion, forKey: .suggestion)

            try? container.encodeIfPresent(rawKey, forKey: .rawKey)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)
        }
    }
}
