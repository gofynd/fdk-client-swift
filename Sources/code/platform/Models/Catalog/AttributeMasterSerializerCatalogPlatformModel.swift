

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AttributeMasterSerializer
         Used By: Catalog
     */

    class AttributeMasterSerializer: Codable {
        public var createdOn: String?

        public var modifiedBy: [String: Any]?

        public var tags: [String]?

        public var isNested: Bool?

        public var departments: [String]

        public var createdBy: [String: Any]?

        public var logo: String?

        public var filters: AttributeMasterFilter

        public var rawKey: String?

        public var schema: AttributeMaster

        public var synonyms: [String: Any]?

        public var enabledForEndConsumer: Bool?

        public var variant: Bool?

        public var slug: String

        public var name: String?

        public var description: String?

        public var details: AttributeMasterDetails

        public var modifiedOn: String?

        public var unit: String?

        public var suggestion: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case tags

            case isNested = "is_nested"

            case departments

            case createdBy = "created_by"

            case logo

            case filters

            case rawKey = "raw_key"

            case schema

            case synonyms

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case variant

            case slug

            case name

            case description

            case details

            case modifiedOn = "modified_on"

            case unit

            case suggestion
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String], description: String? = nil, details: AttributeMasterDetails, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter, isNested: Bool? = nil, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, rawKey: String? = nil, schema: AttributeMaster, slug: String, suggestion: String? = nil, synonyms: [String: Any]? = nil, tags: [String]? = nil, unit: String? = nil, variant: Bool? = nil) {
            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.isNested = isNested

            self.departments = departments

            self.createdBy = createdBy

            self.logo = logo

            self.filters = filters

            self.rawKey = rawKey

            self.schema = schema

            self.synonyms = synonyms

            self.enabledForEndConsumer = enabledForEndConsumer

            self.variant = variant

            self.slug = slug

            self.name = name

            self.description = description

            self.details = details

            self.modifiedOn = modifiedOn

            self.unit = unit

            self.suggestion = suggestion
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            departments = try container.decode([String].self, forKey: .departments)

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

            filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

            do {
                rawKey = try container.decode(String.self, forKey: .rawKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            schema = try container.decode(AttributeMaster.self, forKey: .schema)

            do {
                synonyms = try container.decode([String: Any].self, forKey: .synonyms)

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
                variant = try container.decode(Bool.self, forKey: .variant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            details = try container.decode(AttributeMasterDetails.self, forKey: .details)

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

            do {
                suggestion = try container.decode(String.self, forKey: .suggestion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(rawKey, forKey: .rawKey)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(suggestion, forKey: .suggestion)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AttributeMasterSerializer
         Used By: Catalog
     */

    class AttributeMasterSerializer: Codable {
        public var createdOn: String?

        public var modifiedBy: [String: Any]?

        public var tags: [String]?

        public var isNested: Bool?

        public var departments: [String]

        public var createdBy: [String: Any]?

        public var logo: String?

        public var filters: AttributeMasterFilter

        public var rawKey: String?

        public var schema: AttributeMaster

        public var synonyms: [String: Any]?

        public var enabledForEndConsumer: Bool?

        public var variant: Bool?

        public var slug: String

        public var name: String?

        public var description: String?

        public var details: AttributeMasterDetails

        public var modifiedOn: String?

        public var unit: String?

        public var suggestion: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case tags

            case isNested = "is_nested"

            case departments

            case createdBy = "created_by"

            case logo

            case filters

            case rawKey = "raw_key"

            case schema

            case synonyms

            case enabledForEndConsumer = "enabled_for_end_consumer"

            case variant

            case slug

            case name

            case description

            case details

            case modifiedOn = "modified_on"

            case unit

            case suggestion
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String], description: String? = nil, details: AttributeMasterDetails, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter, isNested: Bool? = nil, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, rawKey: String? = nil, schema: AttributeMaster, slug: String, suggestion: String? = nil, synonyms: [String: Any]? = nil, tags: [String]? = nil, unit: String? = nil, variant: Bool? = nil) {
            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.isNested = isNested

            self.departments = departments

            self.createdBy = createdBy

            self.logo = logo

            self.filters = filters

            self.rawKey = rawKey

            self.schema = schema

            self.synonyms = synonyms

            self.enabledForEndConsumer = enabledForEndConsumer

            self.variant = variant

            self.slug = slug

            self.name = name

            self.description = description

            self.details = details

            self.modifiedOn = modifiedOn

            self.unit = unit

            self.suggestion = suggestion
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            departments = try container.decode([String].self, forKey: .departments)

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

            filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)

            do {
                rawKey = try container.decode(String.self, forKey: .rawKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            schema = try container.decode(AttributeMaster.self, forKey: .schema)

            do {
                synonyms = try container.decode([String: Any].self, forKey: .synonyms)

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
                variant = try container.decode(Bool.self, forKey: .variant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            details = try container.decode(AttributeMasterDetails.self, forKey: .details)

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

            do {
                suggestion = try container.decode(String.self, forKey: .suggestion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isNested, forKey: .isNested)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(rawKey, forKey: .rawKey)

            try? container.encodeIfPresent(schema, forKey: .schema)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)

            try? container.encodeIfPresent(variant, forKey: .variant)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(suggestion, forKey: .suggestion)
        }
    }
}
