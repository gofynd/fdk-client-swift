

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneMappingType
        Used By: Serviceability
    */

    class ZoneMappingType: Codable {
        
        
        public var country: String
        
        public var regions: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case regions = "regions"
            
        }

        public init(country: String, regions: [String]) {
            
            self.country = country
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                regions = try container.decode([String].self, forKey: .regions)
                
            
            
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
        Model: ZoneMappingType
        Used By: Serviceability
    */

    class ZoneMappingType: Codable {
        
        
        public var country: String
        
        public var regions: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case regions = "regions"
            
        }

        public init(country: String, regions: [String]) {
            
            self.country = country
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                regions = try container.decode([String].self, forKey: .regions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}


