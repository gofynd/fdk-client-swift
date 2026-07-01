

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ListViewItems
        Used By: Serviceability
    */

    class ListViewItems: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var geoAreas: [GeoArea]
        
        public var slug: String
        
        public var stores: ListViewProduct
        
        public var isActive: Bool
        
        public var product: ListViewProduct
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: ModifiedBy?
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var stage: String?
        
        public var summary: Summary?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case geoAreas = "geo_areas"
            
            case slug = "slug"
            
            case stores = "stores"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case summary = "summary"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: CreatedBy? = nil, createdOn: String, geoAreas: [GeoArea], isActive: Bool, modifiedBy: ModifiedBy? = nil, modifiedOn: String, name: String, product: ListViewProduct, slug: String, stage: String? = nil, stores: ListViewProduct, summary: Summary? = nil, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.geoAreas = geoAreas
            
            self.slug = slug
            
            self.stores = stores
            
            self.isActive = isActive
            
            self.product = product
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                geoAreas = try container.decode([GeoArea].self, forKey: .geoAreas)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                stores = try container.decode(ListViewProduct.self, forKey: .stores)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ListViewItems
        Used By: Serviceability
    */

    class ListViewItems: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var geoAreas: [GeoArea]
        
        public var slug: String
        
        public var stores: ListViewProduct
        
        public var isActive: Bool
        
        public var product: ListViewProduct
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: ModifiedBy?
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var stage: String?
        
        public var summary: Summary?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case geoAreas = "geo_areas"
            
            case slug = "slug"
            
            case stores = "stores"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case summary = "summary"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: CreatedBy? = nil, createdOn: String, geoAreas: [GeoArea], isActive: Bool, modifiedBy: ModifiedBy? = nil, modifiedOn: String, name: String, product: ListViewProduct, slug: String, stage: String? = nil, stores: ListViewProduct, summary: Summary? = nil, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.geoAreas = geoAreas
            
            self.slug = slug
            
            self.stores = stores
            
            self.isActive = isActive
            
            self.product = product
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                geoAreas = try container.decode([GeoArea].self, forKey: .geoAreas)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                stores = try container.decode(ListViewProduct.self, forKey: .stores)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}


