

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetZoneByIdSchema
        Used By: Serviceability
    */

    class GetZoneByIdSchema: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int?
        
        public var isActive: Bool
        
        public var product: ProductSchema
        
        public var stores: StoresSchema
        
        public var summary: SummarySchema?
        
        public var createdBy: String?
        
        public var createdOn: String?
        
        public var modifiedBy: String?
        
        public var modifiedOn: String?
        
        public var stage: String?
        
        public var overlappingFileUrl: String?
        
        public var geoAreas: [String]
        
        public var type: String
        
        public var overlappingZoneNames: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case stores = "stores"
            
            case summary = "summary"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case overlappingFileUrl = "overlapping_file_url"
            
            case geoAreas = "geo_areas"
            
            case type = "type"
            
            case overlappingZoneNames = "overlapping_zone_names"
            
        }

        public init(companyId: Int? = nil, createdBy: String? = nil, createdOn: String? = nil, geoAreas: [String], isActive: Bool, modifiedBy: String? = nil, modifiedOn: String? = nil, name: String, overlappingFileUrl: String? = nil, overlappingZoneNames: [String]? = nil, product: ProductSchema, slug: String, stage: String? = nil, stores: StoresSchema, summary: SummarySchema? = nil, type: String, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.product = product
            
            self.stores = stores
            
            self.summary = summary
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.overlappingFileUrl = overlappingFileUrl
            
            self.geoAreas = geoAreas
            
            self.type = type
            
            self.overlappingZoneNames = overlappingZoneNames
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ProductSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresSchema.self, forKey: .stores)
                
            
            
            
                do {
                    summary = try container.decode(SummarySchema.self, forKey: .summary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
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
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    overlappingFileUrl = try container.decode(String.self, forKey: .overlappingFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    overlappingZoneNames = try container.decode([String].self, forKey: .overlappingZoneNames)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(overlappingFileUrl, forKey: .overlappingFileUrl)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(overlappingZoneNames, forKey: .overlappingZoneNames)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetZoneByIdSchema
        Used By: Serviceability
    */

    class GetZoneByIdSchema: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int?
        
        public var isActive: Bool
        
        public var product: ProductSchema
        
        public var stores: StoresSchema
        
        public var summary: SummarySchema?
        
        public var createdBy: String?
        
        public var createdOn: String?
        
        public var modifiedBy: String?
        
        public var modifiedOn: String?
        
        public var stage: String?
        
        public var overlappingFileUrl: String?
        
        public var geoAreas: [String]
        
        public var type: String
        
        public var overlappingZoneNames: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case stores = "stores"
            
            case summary = "summary"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case overlappingFileUrl = "overlapping_file_url"
            
            case geoAreas = "geo_areas"
            
            case type = "type"
            
            case overlappingZoneNames = "overlapping_zone_names"
            
        }

        public init(companyId: Int? = nil, createdBy: String? = nil, createdOn: String? = nil, geoAreas: [String], isActive: Bool, modifiedBy: String? = nil, modifiedOn: String? = nil, name: String, overlappingFileUrl: String? = nil, overlappingZoneNames: [String]? = nil, product: ProductSchema, slug: String, stage: String? = nil, stores: StoresSchema, summary: SummarySchema? = nil, type: String, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.product = product
            
            self.stores = stores
            
            self.summary = summary
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.overlappingFileUrl = overlappingFileUrl
            
            self.geoAreas = geoAreas
            
            self.type = type
            
            self.overlappingZoneNames = overlappingZoneNames
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ProductSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresSchema.self, forKey: .stores)
                
            
            
            
                do {
                    summary = try container.decode(SummarySchema.self, forKey: .summary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
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
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    overlappingFileUrl = try container.decode(String.self, forKey: .overlappingFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    overlappingZoneNames = try container.decode([String].self, forKey: .overlappingZoneNames)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(overlappingFileUrl, forKey: .overlappingFileUrl)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(overlappingZoneNames, forKey: .overlappingZoneNames)
            
            
        }
        
    }
}


