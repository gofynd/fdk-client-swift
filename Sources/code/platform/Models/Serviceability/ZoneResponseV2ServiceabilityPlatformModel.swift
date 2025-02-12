

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneResponseV2
        Used By: Serviceability
    */

    class ZoneResponseV2: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var type: String
        
        public var applicationId: String
        
        public var isActive: Bool
        
        public var geoAreas: [String]
        
        public var stores: ListViewProductV2
        
        public var product: ListViewProductV2
        
        public var createdBy: String
        
        public var createdOn: String
        
        public var modifiedBy: String
        
        public var modifiedOn: String
        
        public var stage: String
        
        public var zoneId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case type = "type"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case geoAreas = "geo_areas"
            
            case stores = "stores"
            
            case product = "product"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case zoneId = "zone_id"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: String, createdOn: String, geoAreas: [String], isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, product: ListViewProductV2, slug: String, stage: String, stores: ListViewProductV2, type: String, zoneId: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.type = type
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.geoAreas = geoAreas
            
            self.stores = stores
            
            self.product = product
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.zoneId = zoneId
            
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
                
            
            
            
                stores = try container.decode(ListViewProductV2.self, forKey: .stores)
                
            
            
            
                product = try container.decode(ListViewProductV2.self, forKey: .product)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneResponseV2
        Used By: Serviceability
    */

    class ZoneResponseV2: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var companyId: Int
        
        public var type: String
        
        public var applicationId: String
        
        public var isActive: Bool
        
        public var geoAreas: [String]
        
        public var stores: ListViewProductV2
        
        public var product: ListViewProductV2
        
        public var createdBy: String
        
        public var createdOn: String
        
        public var modifiedBy: String
        
        public var modifiedOn: String
        
        public var stage: String
        
        public var zoneId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case type = "type"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case geoAreas = "geo_areas"
            
            case stores = "stores"
            
            case product = "product"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case zoneId = "zone_id"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: String, createdOn: String, geoAreas: [String], isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, product: ListViewProductV2, slug: String, stage: String, stores: ListViewProductV2, type: String, zoneId: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.type = type
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.geoAreas = geoAreas
            
            self.stores = stores
            
            self.product = product
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.zoneId = zoneId
            
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
                
            
            
            
                stores = try container.decode(ListViewProductV2.self, forKey: .stores)
                
            
            
            
                product = try container.decode(ListViewProductV2.self, forKey: .product)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}


