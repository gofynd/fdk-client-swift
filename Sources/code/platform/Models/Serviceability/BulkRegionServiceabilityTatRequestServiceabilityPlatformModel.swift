

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkRegionServiceabilityTatRequest
        Used By: Serviceability
    */

    class BulkRegionServiceabilityTatRequest: Codable {
        
        
        public var country: String
        
        public var region: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case region = "region"
            
            case type = "type"
            
        }

        public init(country: String, region: String, type: String) {
            
            self.country = country
            
            self.region = region
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkRegionServiceabilityTatRequest
        Used By: Serviceability
    */

    class BulkRegionServiceabilityTatRequest: Codable {
        
        
        public var country: String
        
        public var region: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case region = "region"
            
            case type = "type"
            
        }

        public init(country: String, region: String, type: String) {
            
            self.country = country
            
            self.region = region
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


