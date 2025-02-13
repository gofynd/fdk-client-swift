

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CreateZoneV2Data
        Used By: Serviceability
    */

    class CreateZoneV2Data: Codable {
        
        
        public var isActive: Bool
        
        public var slug: String
        
        public var type: String
        
        public var accessLevel: String
        
        public var name: String
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var geoAreas: [String]
        
        public var stores: ZoneStores?
        
        public var product: ZoneProduct?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case type = "type"
            
            case accessLevel = "access_level"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case geoAreas = "geo_areas"
            
            case stores = "stores"
            
            case product = "product"
            
        }

        public init(accessLevel: String, applicationId: String, companyId: Int, geoAreas: [String], isActive: Bool, name: String, product: ZoneProduct? = nil, slug: String, stores: ZoneStores? = nil, type: String) {
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.type = type
            
            self.accessLevel = accessLevel
            
            self.name = name
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.geoAreas = geoAreas
            
            self.stores = stores
            
            self.product = product
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                accessLevel = try container.decode(String.self, forKey: .accessLevel)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                do {
                    stores = try container.decode(ZoneStores.self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(ZoneProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(accessLevel, forKey: .accessLevel)
            
            
            
            
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
        Model: CreateZoneV2Data
        Used By: Serviceability
    */

    class CreateZoneV2Data: Codable {
        
        
        public var isActive: Bool
        
        public var slug: String
        
        public var type: String
        
        public var accessLevel: String
        
        public var name: String
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var geoAreas: [String]
        
        public var stores: ZoneStores?
        
        public var product: ZoneProduct?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case type = "type"
            
            case accessLevel = "access_level"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case geoAreas = "geo_areas"
            
            case stores = "stores"
            
            case product = "product"
            
        }

        public init(accessLevel: String, applicationId: String, companyId: Int, geoAreas: [String], isActive: Bool, name: String, product: ZoneProduct? = nil, slug: String, stores: ZoneStores? = nil, type: String) {
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.type = type
            
            self.accessLevel = accessLevel
            
            self.name = name
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.geoAreas = geoAreas
            
            self.stores = stores
            
            self.product = product
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                accessLevel = try container.decode(String.self, forKey: .accessLevel)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                geoAreas = try container.decode([String].self, forKey: .geoAreas)
                
            
            
            
                do {
                    stores = try container.decode(ZoneStores.self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(ZoneProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(accessLevel, forKey: .accessLevel)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}


