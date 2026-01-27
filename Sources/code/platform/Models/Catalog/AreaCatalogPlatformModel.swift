

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Area
        Used By: Catalog
    */

    class Area: Codable {
        
        
        public var regions: [AreaDetails]
        
        public var country: Country
        

        public enum CodingKeys: String, CodingKey {
            
            case regions = "regions"
            
            case country = "country"
            
        }

        public init(country: Country, regions: [AreaDetails]) {
            
            self.regions = regions
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                regions = try container.decode([AreaDetails].self, forKey: .regions)
                
            
            
            
                country = try container.decode(Country.self, forKey: .country)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Area
        Used By: Catalog
    */

    class Area: Codable {
        
        
        public var regions: [AreaDetails]
        
        public var country: Country
        

        public enum CodingKeys: String, CodingKey {
            
            case regions = "regions"
            
            case country = "country"
            
        }

        public init(country: Country, regions: [AreaDetails]) {
            
            self.regions = regions
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                regions = try container.decode([AreaDetails].self, forKey: .regions)
                
            
            
            
                country = try container.decode(Country.self, forKey: .country)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}


