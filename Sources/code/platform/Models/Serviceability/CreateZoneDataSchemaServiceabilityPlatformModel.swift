

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CreateZoneDataSchema
        Used By: Serviceability
    */

    class CreateZoneDataSchema: Codable {
        
        
        public var fulfillmentOptionSlug: String?
        
        public var isActive: Bool
        
        public var slug: String
        
        public var name: String
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var geoAreas: [String]
        
        public var stores: ZoneStores
        
        public var product: ZoneProduct
        

        public enum CodingKeys: String, CodingKey {
            
            case fulfillmentOptionSlug = "fulfillment_option_slug"
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case geoAreas = "geo_areas"
            
            case stores = "stores"
            
            case product = "product"
            
        }

        public init(applicationId: String, companyId: Int, fulfillmentOptionSlug: String? = nil, geoAreas: [String], isActive: Bool, name: String, product: ZoneProduct, slug: String, stores: ZoneStores) {
            
            self.fulfillmentOptionSlug = fulfillmentOptionSlug
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.name = name
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.geoAreas = geoAreas
            
            self.stores = stores
            
            self.product = product
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fulfillmentOptionSlug = try container.decode(String.self, forKey: .fulfillmentOptionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                stores = try container.decode(ZoneStores.self, forKey: .stores)
                
            
            
            
                product = try container.decode(ZoneProduct.self, forKey: .product)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionSlug, forKey: .fulfillmentOptionSlug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CreateZoneDataSchema
        Used By: Serviceability
    */

    class CreateZoneDataSchema: Codable {
        
        
        public var fulfillmentOptionSlug: String?
        
        public var isActive: Bool
        
        public var slug: String
        
        public var name: String
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var geoAreas: [String]
        
        public var stores: ZoneStores
        
        public var product: ZoneProduct
        

        public enum CodingKeys: String, CodingKey {
            
            case fulfillmentOptionSlug = "fulfillment_option_slug"
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case geoAreas = "geo_areas"
            
            case stores = "stores"
            
            case product = "product"
            
        }

        public init(applicationId: String, companyId: Int, fulfillmentOptionSlug: String? = nil, geoAreas: [String], isActive: Bool, name: String, product: ZoneProduct, slug: String, stores: ZoneStores) {
            
            self.fulfillmentOptionSlug = fulfillmentOptionSlug
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.name = name
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.geoAreas = geoAreas
            
            self.stores = stores
            
            self.product = product
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fulfillmentOptionSlug = try container.decode(String.self, forKey: .fulfillmentOptionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                stores = try container.decode(ZoneStores.self, forKey: .stores)
                
            
            
            
                product = try container.decode(ZoneProduct.self, forKey: .product)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionSlug, forKey: .fulfillmentOptionSlug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}


