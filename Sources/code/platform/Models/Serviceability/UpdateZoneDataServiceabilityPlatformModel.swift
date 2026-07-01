

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: UpdateZoneData
        Used By: Serviceability
    */

    class UpdateZoneData: Codable {
        
        
        public var zoneId: String?
        
        public var name: String?
        
        public var type: String?
        
        public var slug: String?
        
        public var geoAreas: [String]?
        
        public var companyId: Int?
        
        public var applicationId: String?
        
        public var isActive: Bool?
        
        public var product: ProductSchema?
        
        public var stores: StoresSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case type = "type"
            
            case slug = "slug"
            
            case geoAreas = "geo_areas"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case stores = "stores"
            
        }

        public init(applicationId: String? = nil, companyId: Int? = nil, geoAreas: [String]? = nil, isActive: Bool? = nil, name: String? = nil, product: ProductSchema? = nil, slug: String? = nil, stores: StoresSchema? = nil, type: String? = nil, zoneId: String? = nil) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.type = type
            
            self.slug = slug
            
            self.geoAreas = geoAreas
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.product = product
            
            self.stores = stores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                
            
            
                do {
                    geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(ProductSchema.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode(StoresSchema.self, forKey: .stores)
                
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
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: UpdateZoneData
        Used By: Serviceability
    */

    class UpdateZoneData: Codable {
        
        
        public var zoneId: String?
        
        public var name: String?
        
        public var type: String?
        
        public var slug: String?
        
        public var geoAreas: [String]?
        
        public var companyId: Int?
        
        public var applicationId: String?
        
        public var isActive: Bool?
        
        public var product: ProductSchema?
        
        public var stores: StoresSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case type = "type"
            
            case slug = "slug"
            
            case geoAreas = "geo_areas"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case stores = "stores"
            
        }

        public init(applicationId: String? = nil, companyId: Int? = nil, geoAreas: [String]? = nil, isActive: Bool? = nil, name: String? = nil, product: ProductSchema? = nil, slug: String? = nil, stores: StoresSchema? = nil, type: String? = nil, zoneId: String? = nil) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.type = type
            
            self.slug = slug
            
            self.geoAreas = geoAreas
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.isActive = isActive
            
            self.product = product
            
            self.stores = stores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                
            
            
                do {
                    geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(ProductSchema.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode(StoresSchema.self, forKey: .stores)
                
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
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
        }
        
    }
}


