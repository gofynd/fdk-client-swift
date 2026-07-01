

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GeoAreaItemResult
        Used By: Serviceability
    */

    class GeoAreaItemResult: Codable {
        
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var geoareaId: String
        
        public var name: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var regionType: String?
        
        public var type: String
        
        public var areas: [AreaExpanded]
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: ModifiedBy?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
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

        public init(applicationId: String, areas: [AreaExpanded], companyId: Int, createdBy: CreatedBy? = nil, createdOn: String? = nil, geoareaId: String, isActive: Bool, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String, regionType: String? = nil, slug: String, type: String) {
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
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
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    regionType = try container.decode(String.self, forKey: .regionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                areas = try container.decode([AreaExpanded].self, forKey: .areas)
                
            
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
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
        Model: GeoAreaItemResult
        Used By: Serviceability
    */

    class GeoAreaItemResult: Codable {
        
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var geoareaId: String
        
        public var name: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var regionType: String?
        
        public var type: String
        
        public var areas: [AreaExpanded]
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: ModifiedBy?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
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

        public init(applicationId: String, areas: [AreaExpanded], companyId: Int, createdBy: CreatedBy? = nil, createdOn: String? = nil, geoareaId: String, isActive: Bool, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String, regionType: String? = nil, slug: String, type: String) {
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
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
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    regionType = try container.decode(String.self, forKey: .regionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                areas = try container.decode([AreaExpanded].self, forKey: .areas)
                
            
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
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


