

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GeoAreaResponse
        Used By: Serviceability
    */

    class GeoAreaResponse: Codable {
        
        
        public var name: String
        
        public var geoareaId: String?
        
        public var isActive: Bool
        
        public var type: String
        
        public var regionType: String
        
        public var areas: [AreaExpanded]
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case geoareaId = "geoarea_id"
            
            case isActive = "is_active"
            
            case type = "type"
            
            case regionType = "region_type"
            
            case areas = "areas"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(areas: [AreaExpanded], createdBy: String? = nil, createdOn: String? = nil, geoareaId: String? = nil, isActive: Bool, modifiedBy: String? = nil, modifiedOn: String? = nil, name: String, regionType: String, type: String) {
            
            self.name = name
            
            self.geoareaId = geoareaId
            
            self.isActive = isActive
            
            self.type = type
            
            self.regionType = regionType
            
            self.areas = areas
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
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
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
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
        Model: GeoAreaResponse
        Used By: Serviceability
    */

    class GeoAreaResponse: Codable {
        
        
        public var name: String
        
        public var geoareaId: String?
        
        public var isActive: Bool
        
        public var type: String
        
        public var regionType: String
        
        public var areas: [AreaExpanded]
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case geoareaId = "geoarea_id"
            
            case isActive = "is_active"
            
            case type = "type"
            
            case regionType = "region_type"
            
            case areas = "areas"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(areas: [AreaExpanded], createdBy: String? = nil, createdOn: String? = nil, geoareaId: String? = nil, isActive: Bool, modifiedBy: String? = nil, modifiedOn: String? = nil, name: String, regionType: String, type: String) {
            
            self.name = name
            
            self.geoareaId = geoareaId
            
            self.isActive = isActive
            
            self.type = type
            
            self.regionType = regionType
            
            self.areas = areas
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                regionType = try container.decode(String.self, forKey: .regionType)
                
            
            
            
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
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}


