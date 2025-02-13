

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
        
        public var applicationId: String
        
        public var isActive: Bool
        
        public var geoAreas: [String]
        
        public var product: ProductSchema
        
        public var stores: StoresSchema
        
        public var zoneId: String
        
        public var createdBy: String
        
        public var createdOn: String
        
        public var modifiedBy: String
        
        public var modifiedOn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case type = "type"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case geoAreas = "geo_areas"
            
            case product = "product"
            
            case stores = "stores"
            
            case zoneId = "zone_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: String, createdOn: String, geoAreas: [String], isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, product: ProductSchema, slug: String, stores: StoresSchema, type: String, zoneId: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.type = type
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.geoAreas = geoAreas
            
            self.product = product
            
            self.stores = stores
            
            self.zoneId = zoneId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                product = try container.decode(ProductSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresSchema.self, forKey: .stores)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
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
        
        public var applicationId: String
        
        public var isActive: Bool
        
        public var geoAreas: [String]
        
        public var product: ProductSchema
        
        public var stores: StoresSchema
        
        public var zoneId: String
        
        public var createdBy: String
        
        public var createdOn: String
        
        public var modifiedBy: String
        
        public var modifiedOn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case type = "type"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case geoAreas = "geo_areas"
            
            case product = "product"
            
            case stores = "stores"
            
            case zoneId = "zone_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: String, createdOn: String, geoAreas: [String], isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, product: ProductSchema, slug: String, stores: StoresSchema, type: String, zoneId: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.type = type
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.geoAreas = geoAreas
            
            self.product = product
            
            self.stores = stores
            
            self.zoneId = zoneId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                product = try container.decode(ProductSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresSchema.self, forKey: .stores)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}


