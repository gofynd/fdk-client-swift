

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GeoAreaResponseBody
        Used By: Serviceability
    */

    class GeoAreaResponseBody: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var areas: [Area]
        
        public var regionType: String
        
        public var type: String
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var createdBy: String
        
        public var modifiedBy: String
        
        public var geoareaId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case isActive = "is_active"
            
            case areas = "areas"
            
            case regionType = "region_type"
            
            case type = "type"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case geoareaId = "geoarea_id"
            
        }

        public init(areas: [Area], createdBy: String, createdOn: String, geoareaId: String, isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, regionType: String, slug: String, type: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.isActive = isActive
            
            self.areas = areas
            
            self.regionType = regionType
            
            self.type = type
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.geoareaId = geoareaId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                areas = try container.decode([Area].self, forKey: .areas)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
            
                geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GeoAreaResponseBody
        Used By: Serviceability
    */

    class GeoAreaResponseBody: Codable {
        
        
        public var name: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var areas: [Area]
        
        public var regionType: String
        
        public var type: String
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var createdBy: String
        
        public var modifiedBy: String
        
        public var geoareaId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case isActive = "is_active"
            
            case areas = "areas"
            
            case regionType = "region_type"
            
            case type = "type"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case geoareaId = "geoarea_id"
            
        }

        public init(areas: [Area], createdBy: String, createdOn: String, geoareaId: String, isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, regionType: String, slug: String, type: String) {
            
            self.name = name
            
            self.slug = slug
            
            self.isActive = isActive
            
            self.areas = areas
            
            self.regionType = regionType
            
            self.type = type
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.geoareaId = geoareaId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                areas = try container.decode([Area].self, forKey: .areas)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
            
                geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
        }
        
    }
}

