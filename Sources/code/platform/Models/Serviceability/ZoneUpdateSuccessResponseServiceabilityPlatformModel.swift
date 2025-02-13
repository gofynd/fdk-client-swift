

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneUpdateSuccessResponse
        Used By: Serviceability
    */

    class ZoneUpdateSuccessResponse: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var type: String
        
        public var accessLevel: String
        
        public var applicationId: String
        
        public var isActive: Bool
        
        public var isOpted: Bool
        
        public var geoAreas: [String]
        
        public var product: ProductSchema
        
        public var stores: StoresSchema
        
        public var zoneId: String
        
        public var createdBy: String
        
        public var createdOn: String
        
        public var modifiedBy: String
        
        public var modifiedOn: String
        
        public var stage: String?
        
        public var summary: Summary?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case type = "type"
            
            case accessLevel = "access_level"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case isOpted = "is_opted"
            
            case geoAreas = "geo_areas"
            
            case product = "product"
            
            case stores = "stores"
            
            case zoneId = "zone_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case summary = "summary"
            
        }

        public init(accessLevel: String, applicationId: String, companyId: Int, createdBy: String, createdOn: String, geoAreas: [String], isActive: Bool, isOpted: Bool, modifiedBy: String, modifiedOn: String, name: String, product: ProductSchema, slug: String, stage: String? = nil, stores: StoresSchema, summary: Summary? = nil, type: String, zoneId: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.type = type
            
            self.accessLevel = accessLevel
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.isOpted = isOpted
            
            self.geoAreas = geoAreas
            
            self.product = product
            
            self.stores = stores
            
            self.zoneId = zoneId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                accessLevel = try container.decode(String.self, forKey: .accessLevel)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isOpted = try container.decode(Bool.self, forKey: .isOpted)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                product = try container.decode(ProductSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresSchema.self, forKey: .stores)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    summary = try container.decode(Summary.self, forKey: .summary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(accessLevel, forKey: .accessLevel)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isOpted, forKey: .isOpted)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneUpdateSuccessResponse
        Used By: Serviceability
    */

    class ZoneUpdateSuccessResponse: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var type: String
        
        public var accessLevel: String
        
        public var applicationId: String
        
        public var isActive: Bool
        
        public var isOpted: Bool
        
        public var geoAreas: [String]
        
        public var product: ProductSchema
        
        public var stores: StoresSchema
        
        public var zoneId: String
        
        public var createdBy: String
        
        public var createdOn: String
        
        public var modifiedBy: String
        
        public var modifiedOn: String
        
        public var stage: String?
        
        public var summary: Summary?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case type = "type"
            
            case accessLevel = "access_level"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case isOpted = "is_opted"
            
            case geoAreas = "geo_areas"
            
            case product = "product"
            
            case stores = "stores"
            
            case zoneId = "zone_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case summary = "summary"
            
        }

        public init(accessLevel: String, applicationId: String, companyId: Int, createdBy: String, createdOn: String, geoAreas: [String], isActive: Bool, isOpted: Bool, modifiedBy: String, modifiedOn: String, name: String, product: ProductSchema, slug: String, stage: String? = nil, stores: StoresSchema, summary: Summary? = nil, type: String, zoneId: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.type = type
            
            self.accessLevel = accessLevel
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.isOpted = isOpted
            
            self.geoAreas = geoAreas
            
            self.product = product
            
            self.stores = stores
            
            self.zoneId = zoneId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                accessLevel = try container.decode(String.self, forKey: .accessLevel)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isOpted = try container.decode(Bool.self, forKey: .isOpted)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                product = try container.decode(ProductSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresSchema.self, forKey: .stores)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    summary = try container.decode(Summary.self, forKey: .summary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(accessLevel, forKey: .accessLevel)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isOpted, forKey: .isOpted)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}


