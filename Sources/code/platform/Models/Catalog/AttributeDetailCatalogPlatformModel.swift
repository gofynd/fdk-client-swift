

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AttributeDetail
        Used By: Catalog
    */

    class AttributeDetail: Codable {
        
        
        public var departments: [String]?
        
        public var description: String?
        
        public var details: AttributeMasterDetails?
        
        public var enabledForEndConsumer: Bool?
        
        public var filters: AttributeMasterFilter?
        
        public var id: String?
        
        public var isNested: Bool?
        
        public var logo: String?
        
        public var meta: AttributeMasterMeta?
        
        public var name: String?
        
        public var schema: AttributeMaster?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case description = "description"
            
            case details = "details"
            
            case enabledForEndConsumer = "enabled_for_end_consumer"
            
            case filters = "filters"
            
            case id = "id"
            
            case isNested = "is_nested"
            
            case logo = "logo"
            
            case meta = "meta"
            
            case name = "name"
            
            case schema = "schema"
            
            case slug = "slug"
            
        }

        public init(departments: [String]? = nil, description: String? = nil, details: AttributeMasterDetails? = nil, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter? = nil, id: String? = nil, isNested: Bool? = nil, logo: String? = nil, meta: AttributeMasterMeta? = nil, name: String? = nil, schema: AttributeMaster? = nil, slug: String? = nil) {
            
            self.departments = departments
            
            self.description = description
            
            self.details = details
            
            self.enabledForEndConsumer = enabledForEndConsumer
            
            self.filters = filters
            
            self.id = id
            
            self.isNested = isNested
            
            self.logo = logo
            
            self.meta = meta
            
            self.name = name
            
            self.schema = schema
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    departments = try container.decode([String].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    details = try container.decode(AttributeMasterDetails.self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    meta = try container.decode(AttributeMasterMeta.self, forKey: .meta)
                
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
                    schema = try container.decode(AttributeMaster.self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isNested, forKey: .isNested)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AttributeDetail
        Used By: Catalog
    */

    class AttributeDetail: Codable {
        
        
        public var departments: [String]?
        
        public var description: String?
        
        public var details: AttributeMasterDetails?
        
        public var enabledForEndConsumer: Bool?
        
        public var filters: AttributeMasterFilter?
        
        public var id: String?
        
        public var isNested: Bool?
        
        public var logo: String?
        
        public var meta: AttributeMasterMeta?
        
        public var name: String?
        
        public var schema: AttributeMaster?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case description = "description"
            
            case details = "details"
            
            case enabledForEndConsumer = "enabled_for_end_consumer"
            
            case filters = "filters"
            
            case id = "id"
            
            case isNested = "is_nested"
            
            case logo = "logo"
            
            case meta = "meta"
            
            case name = "name"
            
            case schema = "schema"
            
            case slug = "slug"
            
        }

        public init(departments: [String]? = nil, description: String? = nil, details: AttributeMasterDetails? = nil, enabledForEndConsumer: Bool? = nil, filters: AttributeMasterFilter? = nil, id: String? = nil, isNested: Bool? = nil, logo: String? = nil, meta: AttributeMasterMeta? = nil, name: String? = nil, schema: AttributeMaster? = nil, slug: String? = nil) {
            
            self.departments = departments
            
            self.description = description
            
            self.details = details
            
            self.enabledForEndConsumer = enabledForEndConsumer
            
            self.filters = filters
            
            self.id = id
            
            self.isNested = isNested
            
            self.logo = logo
            
            self.meta = meta
            
            self.name = name
            
            self.schema = schema
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    departments = try container.decode([String].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    details = try container.decode(AttributeMasterDetails.self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabledForEndConsumer = try container.decode(Bool.self, forKey: .enabledForEndConsumer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(AttributeMasterFilter.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    meta = try container.decode(AttributeMasterMeta.self, forKey: .meta)
                
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
                    schema = try container.decode(AttributeMaster.self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(enabledForEndConsumer, forKey: .enabledForEndConsumer)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isNested, forKey: .isNested)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}


