

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneSchema
        Used By: Serviceability
    */

    class ZoneSchema: Codable {
        
        
        public var name: [String: Any]
        
        public var fulfillmentOptionSlug: String?
        
        public var slug: [String: Any]
        
        public var companyId: [String: Any]
        
        public var applicationId: [String: Any]
        
        public var isActive: [String: Any]
        
        public var geoAreas: [String: Any]
        
        public var stores: [String: Any]
        
        public var product: [String: Any]
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: ModifiedBy?
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var stage: [String: Any]
        
        public var zoneId: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case fulfillmentOptionSlug = "fulfillment_option_slug"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case geoAreas = "geo_areas"
            
            case stores = "stores"
            
            case product = "product"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case zoneId = "zone_id"
            
        }

        public init(applicationId: [String: Any], companyId: [String: Any], createdBy: CreatedBy? = nil, createdOn: String, fulfillmentOptionSlug: String? = nil, geoAreas: [String: Any], isActive: [String: Any], modifiedBy: ModifiedBy? = nil, modifiedOn: String, name: [String: Any], product: [String: Any], slug: [String: Any], stage: [String: Any], stores: [String: Any], zoneId: [String: Any]) {
            
            self.name = name
            
            self.fulfillmentOptionSlug = fulfillmentOptionSlug
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.geoAreas = geoAreas
            
            self.stores = stores
            
            self.product = product
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.zoneId = zoneId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode([String: Any].self, forKey: .name)
                
            
            
            
                do {
                    fulfillmentOptionSlug = try container.decode(String.self, forKey: .fulfillmentOptionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode([String: Any].self, forKey: .slug)
                
            
            
            
                companyId = try container.decode([String: Any].self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode([String: Any].self, forKey: .applicationId)
                
            
            
            
                isActive = try container.decode([String: Any].self, forKey: .isActive)
                
            
            
            
                geoAreas = try container.decode([String: Any].self, forKey: .geoAreas)
                
            
            
            
                stores = try container.decode([String: Any].self, forKey: .stores)
                
            
            
            
                product = try container.decode([String: Any].self, forKey: .product)
                
            
            
            
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
                
            
            
            
                stage = try container.decode([String: Any].self, forKey: .stage)
                
            
            
            
                zoneId = try container.decode([String: Any].self, forKey: .zoneId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionSlug, forKey: .fulfillmentOptionSlug)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneSchema
        Used By: Serviceability
    */

    class ZoneSchema: Codable {
        
        
        public var name: [String: Any]
        
        public var fulfillmentOptionSlug: String?
        
        public var slug: [String: Any]
        
        public var companyId: [String: Any]
        
        public var applicationId: [String: Any]
        
        public var isActive: [String: Any]
        
        public var geoAreas: [String: Any]
        
        public var stores: [String: Any]
        
        public var product: [String: Any]
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: ModifiedBy?
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var stage: [String: Any]
        
        public var zoneId: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case fulfillmentOptionSlug = "fulfillment_option_slug"
            
            case slug = "slug"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case geoAreas = "geo_areas"
            
            case stores = "stores"
            
            case product = "product"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case stage = "stage"
            
            case zoneId = "zone_id"
            
        }

        public init(applicationId: [String: Any], companyId: [String: Any], createdBy: CreatedBy? = nil, createdOn: String, fulfillmentOptionSlug: String? = nil, geoAreas: [String: Any], isActive: [String: Any], modifiedBy: ModifiedBy? = nil, modifiedOn: String, name: [String: Any], product: [String: Any], slug: [String: Any], stage: [String: Any], stores: [String: Any], zoneId: [String: Any]) {
            
            self.name = name
            
            self.fulfillmentOptionSlug = fulfillmentOptionSlug
            
            self.slug = slug
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.geoAreas = geoAreas
            
            self.stores = stores
            
            self.product = product
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.stage = stage
            
            self.zoneId = zoneId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode([String: Any].self, forKey: .name)
                
            
            
            
                do {
                    fulfillmentOptionSlug = try container.decode(String.self, forKey: .fulfillmentOptionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode([String: Any].self, forKey: .slug)
                
            
            
            
                companyId = try container.decode([String: Any].self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode([String: Any].self, forKey: .applicationId)
                
            
            
            
                isActive = try container.decode([String: Any].self, forKey: .isActive)
                
            
            
            
                geoAreas = try container.decode([String: Any].self, forKey: .geoAreas)
                
            
            
            
                stores = try container.decode([String: Any].self, forKey: .stores)
                
            
            
            
                product = try container.decode([String: Any].self, forKey: .product)
                
            
            
            
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
                
            
            
            
                stage = try container.decode([String: Any].self, forKey: .stage)
                
            
            
            
                zoneId = try container.decode([String: Any].self, forKey: .zoneId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionSlug, forKey: .fulfillmentOptionSlug)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}


