

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneUpdateSuccessResult
        Used By: Serviceability
    */

    class ZoneUpdateSuccessResult: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var isActive: Bool
        
        public var geoAreas: [String]
        
        public var product: ProductSchema
        
        public var stores: StoresSchema
        
        public var zoneId: String
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: ModifiedBy?
        
        public var createdOn: String
        
        public var modifiedOn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case geoAreas = "geo_areas"
            
            case product = "product"
            
            case stores = "stores"
            
            case zoneId = "zone_id"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: CreatedBy? = nil, createdOn: String, geoAreas: [String], isActive: Bool, modifiedBy: ModifiedBy? = nil, modifiedOn: String, name: String, product: ProductSchema, slug: String, stores: StoresSchema, zoneId: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.geoAreas = geoAreas
            
            self.product = product
            
            self.stores = stores
            
            self.zoneId = zoneId
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                product = try container.decode(ProductSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresSchema.self, forKey: .stores)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneUpdateSuccessResult
        Used By: Serviceability
    */

    class ZoneUpdateSuccessResult: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var isActive: Bool
        
        public var geoAreas: [String]
        
        public var product: ProductSchema
        
        public var stores: StoresSchema
        
        public var zoneId: String
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: ModifiedBy?
        
        public var createdOn: String
        
        public var modifiedOn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case geoAreas = "geo_areas"
            
            case product = "product"
            
            case stores = "stores"
            
            case zoneId = "zone_id"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: CreatedBy? = nil, createdOn: String, geoAreas: [String], isActive: Bool, modifiedBy: ModifiedBy? = nil, modifiedOn: String, name: String, product: ProductSchema, slug: String, stores: StoresSchema, zoneId: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.geoAreas = geoAreas
            
            self.product = product
            
            self.stores = stores
            
            self.zoneId = zoneId
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                product = try container.decode(ProductSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresSchema.self, forKey: .stores)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}


