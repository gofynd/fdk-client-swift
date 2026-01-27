

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxGeoArea
        Used By: Catalog
    */

    class TaxGeoArea: Codable {
        
        
        public var regions: [String]
        
        public var country: String
        

        public enum CodingKeys: String, CodingKey {
            
            case regions = "regions"
            
            case country = "country"
            
        }

        public init(country: String, regions: [String]) {
            
            self.regions = regions
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                regions = try container.decode([String].self, forKey: .regions)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
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
        Model: TaxGeoArea
        Used By: Catalog
    */

    class TaxGeoArea: Codable {
        
        
        public var regions: [String]
        
        public var country: String
        

        public enum CodingKeys: String, CodingKey {
            
            case regions = "regions"
            
            case country = "country"
            
        }

        public init(country: String, regions: [String]) {
            
            self.regions = regions
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                regions = try container.decode([String].self, forKey: .regions)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}


