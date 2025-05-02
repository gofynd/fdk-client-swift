

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AttributeMasterSerializer
        Used By: Catalog
    */

    class AttributeMasterSerializer: Codable {
        
        
        public var createdBy: [String: Any]?
        
        public var createdOn: String?
        
        public var departments: [String]
        
        public var description: String?
        
        public var details: AttributeMasterDetails
        
        public var enabledForEndConsumer: Bool?
        
        public var filters: AttributeMasterFilter
        
        public var isNested: Bool?
        
        public var logo: String?
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var name: String?
        
        public var rawKey: String?
        
        public var schema: AttributeMaster
        
        public var slug: String
        
        public var suggestion: String?
        
        public var synonyms: [String: Any]?
        
        public var tags: [String]?
        
        public var unit: String?
        
        public var variant: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case departments = "departments"
            
            case description = "description"
            
            case details = "details"
            
            case enabledForEndConsumer = "enabled_for_end_consumer"
            
            case filters = "filters"
            
            case isNested = "is_nested"
            
            case logo = "logo"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case rawKey = "raw_key"
            
            case schema = "schema"
            
            case slug = "slug"
            
            case suggestion = "suggestion"
            
            case synonyms = "synonyms"
            
            case tags = "tags"
            
            case unit = "unit"
            
            case variant = "variant"
            
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String], description: String? = nil, details: AttributeMasterDetails, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter, isNested: Bool? = nil, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, rawKey: String? = nil, schema: AttributeMaster, slug: String, suggestion: String? = nil, synonyms: [String: Any]? = nil, tags: [String]? = nil, unit: String? = nil, variant: Bool? = nil) {
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.departments = departments
            
            self.description = description
            
            self.details = details
            
            self.enabledForEndConsumer = enabledForEndConsumer
            
            self.filters = filters
            
            self.isNested = isNested
            
            self.logo = logo
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.rawKey = rawKey
            
            self.schema = schema
            
            self.slug = slug
            
            self.suggestion = suggestion
            
            self.synonyms = synonyms
            
            self.tags = tags
            
            self.unit = unit
            
            self.variant = variant
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                departments = try container.decode([String].self, forKey: .departments)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                details = try container.decode(AttributeMasterDetails.self, forKey: .details)
                
            
            
            
                do {
                    enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)
                
            
            
            
                do {
                    isNested = try container.decode(Bool.self, forKey: .isNested)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rawKey = try container.decode(String.self, forKey: .rawKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                schema = try container.decode(AttributeMaster.self, forKey: .schema)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    suggestion = try container.decode(String.self, forKey: .suggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String: Any].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variant = try container.decode(Bool.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(isNested, forKey: .isNested)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(rawKey, forKey: .rawKey)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(suggestion, forKey: .suggestion)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AttributeMasterSerializer
        Used By: Catalog
    */

    class AttributeMasterSerializer: Codable {
        
        
        public var createdBy: [String: Any]?
        
        public var createdOn: String?
        
        public var departments: [String]
        
        public var description: String?
        
        public var details: AttributeMasterDetails
        
        public var enabledForEndConsumer: Bool?
        
        public var filters: AttributeMasterFilter
        
        public var isNested: Bool?
        
        public var logo: String?
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var name: String?
        
        public var rawKey: String?
        
        public var schema: AttributeMaster
        
        public var slug: String
        
        public var suggestion: String?
        
        public var synonyms: [String: Any]?
        
        public var tags: [String]?
        
        public var unit: String?
        
        public var variant: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case departments = "departments"
            
            case description = "description"
            
            case details = "details"
            
            case enabledForEndConsumer = "enabled_for_end_consumer"
            
            case filters = "filters"
            
            case isNested = "is_nested"
            
            case logo = "logo"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case rawKey = "raw_key"
            
            case schema = "schema"
            
            case slug = "slug"
            
            case suggestion = "suggestion"
            
            case synonyms = "synonyms"
            
            case tags = "tags"
            
            case unit = "unit"
            
            case variant = "variant"
            
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [String], description: String? = nil, details: AttributeMasterDetails, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter, isNested: Bool? = nil, logo: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String? = nil, rawKey: String? = nil, schema: AttributeMaster, slug: String, suggestion: String? = nil, synonyms: [String: Any]? = nil, tags: [String]? = nil, unit: String? = nil, variant: Bool? = nil) {
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.departments = departments
            
            self.description = description
            
            self.details = details
            
            self.enabledForEndConsumer = enabledForEndConsumer
            
            self.filters = filters
            
            self.isNested = isNested
            
            self.logo = logo
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.rawKey = rawKey
            
            self.schema = schema
            
            self.slug = slug
            
            self.suggestion = suggestion
            
            self.synonyms = synonyms
            
            self.tags = tags
            
            self.unit = unit
            
            self.variant = variant
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                departments = try container.decode([String].self, forKey: .departments)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                details = try container.decode(AttributeMasterDetails.self, forKey: .details)
                
            
            
            
                do {
                    enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)
                
            
            
            
                do {
                    isNested = try container.decode(Bool.self, forKey: .isNested)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rawKey = try container.decode(String.self, forKey: .rawKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                schema = try container.decode(AttributeMaster.self, forKey: .schema)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    suggestion = try container.decode(String.self, forKey: .suggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String: Any].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variant = try container.decode(Bool.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(isNested, forKey: .isNested)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(rawKey, forKey: .rawKey)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(suggestion, forKey: .suggestion)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
        }
        
    }
}


