

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ListViewItemsV2
        Used By: Serviceability
    */

    class ListViewItemsV2: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var type: String
        
        public var geoAreas: [GeoArea]
        
        public var slug: String
        
        public var stores: ListViewProductV2
        
        public var isActive: Bool
        
        public var product: ListViewProductV2
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var createdBy: String
        
        public var createdOn: String
        
        public var modifiedBy: String
        
        public var modifiedOn: String
        
        public var stage: String?
        
        public var summary: Summary?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case type = "type"
            
            case geoAreas = "geo_areas"
            
            case slug = "slug"
            
            case stores = "stores"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case summary = "summary"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: String, createdOn: String, geoAreas: [GeoArea], isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, product: ListViewProductV2, slug: String, stage: String? = nil, stores: ListViewProductV2, summary: Summary? = nil, type: String, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.type = type
            
            self.geoAreas = geoAreas
            
            self.slug = slug
            
            self.stores = stores
            
            self.isActive = isActive
            
            self.product = product
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                geoAreas = try container.decode([GeoArea].self, forKey: .geoAreas)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                stores = try container.decode(ListViewProductV2.self, forKey: .stores)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ListViewProductV2.self, forKey: .product)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
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
        Model: ListViewItemsV2
        Used By: Serviceability
    */

    class ListViewItemsV2: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var type: String
        
        public var geoAreas: [GeoArea]
        
        public var slug: String
        
        public var stores: ListViewProductV2
        
        public var isActive: Bool
        
        public var product: ListViewProductV2
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var createdBy: String
        
        public var createdOn: String
        
        public var modifiedBy: String
        
        public var modifiedOn: String
        
        public var stage: String?
        
        public var summary: Summary?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case type = "type"
            
            case geoAreas = "geo_areas"
            
            case slug = "slug"
            
            case stores = "stores"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case summary = "summary"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: String, createdOn: String, geoAreas: [GeoArea], isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, product: ListViewProductV2, slug: String, stage: String? = nil, stores: ListViewProductV2, summary: Summary? = nil, type: String, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.type = type
            
            self.geoAreas = geoAreas
            
            self.slug = slug
            
            self.stores = stores
            
            self.isActive = isActive
            
            self.product = product
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                geoAreas = try container.decode([GeoArea].self, forKey: .geoAreas)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                stores = try container.decode(ListViewProductV2.self, forKey: .stores)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ListViewProductV2.self, forKey: .product)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}


