

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetZoneByIdDetailsSchema
        Used By: Serviceability
    */

    class GetZoneByIdDetailsSchema: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var product: ProductDetailsSchema
        
        public var stores: StoresDetailsSchema
        
        public var stage: String?
        
        public var overlappingFileUrl: String?
        
        public var geoAreas: [GeoAreaDetailsSchema]
        
        public var type: String
        
        public var overlappingZoneNames: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case stores = "stores"
            
            case stage = "stage"
            
            case overlappingFileUrl = "overlapping_file_url"
            
            case geoAreas = "geo_areas"
            
            case type = "type"
            
            case overlappingZoneNames = "overlapping_zone_names"
            
        }

        public init(geoAreas: [GeoAreaDetailsSchema], isActive: Bool, name: String, overlappingFileUrl: String? = nil, overlappingZoneNames: [String]? = nil, product: ProductDetailsSchema, slug: String, stage: String? = nil, stores: StoresDetailsSchema, type: String, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.slug = slug
            
            self.isActive = isActive
            
            self.product = product
            
            self.stores = stores
            
            self.stage = stage
            
            self.overlappingFileUrl = overlappingFileUrl
            
            self.geoAreas = geoAreas
            
            self.type = type
            
            self.overlappingZoneNames = overlappingZoneNames
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ProductDetailsSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresDetailsSchema.self, forKey: .stores)
                
            
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    overlappingFileUrl = try container.decode(String.self, forKey: .overlappingFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                geoAreas = try container.decode([GeoAreaDetailsSchema].self, forKey: .geoAreas)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    overlappingZoneNames = try container.decode([String].self, forKey: .overlappingZoneNames)
                
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
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(overlappingFileUrl, forKey: .overlappingFileUrl)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(overlappingZoneNames, forKey: .overlappingZoneNames)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetZoneByIdDetailsSchema
        Used By: Serviceability
    */

    class GetZoneByIdDetailsSchema: Codable {
        
        
        public var zoneId: String
        
        public var name: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var product: ProductDetailsSchema
        
        public var stores: StoresDetailsSchema
        
        public var stage: String?
        
        public var overlappingFileUrl: String?
        
        public var geoAreas: [GeoAreaDetailsSchema]
        
        public var type: String
        
        public var overlappingZoneNames: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case isActive = "is_active"
            
            case product = "product"
            
            case stores = "stores"
            
            case stage = "stage"
            
            case overlappingFileUrl = "overlapping_file_url"
            
            case geoAreas = "geo_areas"
            
            case type = "type"
            
            case overlappingZoneNames = "overlapping_zone_names"
            
        }

        public init(geoAreas: [GeoAreaDetailsSchema], isActive: Bool, name: String, overlappingFileUrl: String? = nil, overlappingZoneNames: [String]? = nil, product: ProductDetailsSchema, slug: String, stage: String? = nil, stores: StoresDetailsSchema, type: String, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.name = name
            
            self.slug = slug
            
            self.isActive = isActive
            
            self.product = product
            
            self.stores = stores
            
            self.stage = stage
            
            self.overlappingFileUrl = overlappingFileUrl
            
            self.geoAreas = geoAreas
            
            self.type = type
            
            self.overlappingZoneNames = overlappingZoneNames
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                product = try container.decode(ProductDetailsSchema.self, forKey: .product)
                
            
            
            
                stores = try container.decode(StoresDetailsSchema.self, forKey: .stores)
                
            
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    overlappingFileUrl = try container.decode(String.self, forKey: .overlappingFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                geoAreas = try container.decode([GeoAreaDetailsSchema].self, forKey: .geoAreas)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    overlappingZoneNames = try container.decode([String].self, forKey: .overlappingZoneNames)
                
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
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(overlappingFileUrl, forKey: .overlappingFileUrl)
            
            
            
            
            try? container.encodeIfPresent(geoAreas, forKey: .geoAreas)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(overlappingZoneNames, forKey: .overlappingZoneNames)
            
            
        }
        
    }
}


