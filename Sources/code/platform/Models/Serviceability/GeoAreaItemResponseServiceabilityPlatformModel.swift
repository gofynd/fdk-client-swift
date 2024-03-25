

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GeoAreaItemResponse
        Used By: Serviceability
    */

    class GeoAreaItemResponse: Codable {
        
        
        public var geoareaId: String
        
        public var name: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var regionType: String
        
        public var type: String?
        
        public var areas: [AreaExpandedV2]?
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var createdBy: String
        
        public var modifiedBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case geoareaId = "geoarea_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case isActive = "is_active"
            
            case regionType = "region_type"
            
            case type = "type"
            
            case areas = "areas"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(areas: [AreaExpandedV2]? = nil, createdBy: String, createdOn: String, geoareaId: String, isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, regionType: String, slug: String, type: String? = nil) {
            
            self.geoareaId = geoareaId
            
            self.name = name
            
            self.slug = slug
            
            self.isActive = isActive
            
            self.regionType = regionType
            
            self.type = type
            
            self.areas = areas
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areas = try container.decode([AreaExpandedV2].self, forKey: .areas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GeoAreaItemResponse
        Used By: Serviceability
    */

    class GeoAreaItemResponse: Codable {
        
        
        public var geoareaId: String
        
        public var name: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var regionType: String
        
        public var type: String?
        
        public var areas: [AreaExpandedV2]?
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var createdBy: String
        
        public var modifiedBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case geoareaId = "geoarea_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case isActive = "is_active"
            
            case regionType = "region_type"
            
            case type = "type"
            
            case areas = "areas"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(areas: [AreaExpandedV2]? = nil, createdBy: String, createdOn: String, geoareaId: String, isActive: Bool, modifiedBy: String, modifiedOn: String, name: String, regionType: String, slug: String, type: String? = nil) {
            
            self.geoareaId = geoareaId
            
            self.name = name
            
            self.slug = slug
            
            self.isActive = isActive
            
            self.regionType = regionType
            
            self.type = type
            
            self.areas = areas
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areas = try container.decode([AreaExpandedV2].self, forKey: .areas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                createdBy = try container.decode(String.self, forKey: .createdBy)
                
            
            
            
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}


