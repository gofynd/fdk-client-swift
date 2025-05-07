

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: AreaExpanded
        Used By: Serviceability
    */

    class AreaExpanded: Codable {
        
        
        public var country: Country
        
        public var regions: [Region]
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case regions = "regions"
            
        }

        public init(country: Country, regions: [Region]) {
            
            self.country = country
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(Country.self, forKey: .country)
                
            
            
            
                regions = try container.decode([Region].self, forKey: .regions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: AreaExpanded
        Used By: Serviceability
    */

    class AreaExpanded: Codable {
        
        
        public var country: Country
        
        public var regions: [Region]
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case regions = "regions"
            
        }

        public init(country: Country, regions: [Region]) {
            
            self.country = country
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(Country.self, forKey: .country)
                
            
            
            
                regions = try container.decode([Region].self, forKey: .regions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}


