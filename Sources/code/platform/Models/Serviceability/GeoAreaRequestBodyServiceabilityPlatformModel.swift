

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GeoAreaRequestBody
        Used By: Serviceability
    */

    class GeoAreaRequestBody: Codable {
        
        
        public var isActive: Bool
        
        public var name: String
        
        public var slug: String
        
        public var type: String
        
        public var areas: [Area]
        
        public var regionType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case name = "name"
            
            case slug = "slug"
            
            case type = "type"
            
            case areas = "areas"
            
            case regionType = "region_type"
            
        }

        public init(areas: [Area], isActive: Bool, name: String, regionType: String? = nil, slug: String, type: String) {
            
            self.isActive = isActive
            
            self.name = name
            
            self.slug = slug
            
            self.type = type
            
            self.areas = areas
            
            self.regionType = regionType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                areas = try container.decode([Area].self, forKey: .areas)
                
            
            
            
                do {
                    regionType = try container.decode(String.self, forKey: .regionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GeoAreaRequestBody
        Used By: Serviceability
    */

    class GeoAreaRequestBody: Codable {
        
        
        public var isActive: Bool
        
        public var name: String
        
        public var slug: String
        
        public var type: String
        
        public var areas: [Area]
        
        public var regionType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case name = "name"
            
            case slug = "slug"
            
            case type = "type"
            
            case areas = "areas"
            
            case regionType = "region_type"
            
        }

        public init(areas: [Area], isActive: Bool, name: String, regionType: String? = nil, slug: String, type: String) {
            
            self.isActive = isActive
            
            self.name = name
            
            self.slug = slug
            
            self.type = type
            
            self.areas = areas
            
            self.regionType = regionType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                areas = try container.decode([Area].self, forKey: .areas)
                
            
            
            
                do {
                    regionType = try container.decode(String.self, forKey: .regionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
        }
        
    }
}


