

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetZoneFromPincodeViewResponse
        Used By: Serviceability
    */

    class GetZoneFromPincodeViewResponse: Codable {
        
        
        public var serviceabilityType: String
        
        public var zones: [Zone]
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case zones = "zones"
            
        }

        public init(serviceabilityType: String, zones: [Zone]) {
            
            self.serviceabilityType = serviceabilityType
            
            self.zones = zones
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                zones = try container.decode([Zone].self, forKey: .zones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetZoneFromPincodeViewResponse
        Used By: Serviceability
    */

    class GetZoneFromPincodeViewResponse: Codable {
        
        
        public var serviceabilityType: String
        
        public var zones: [Zone]
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case zones = "zones"
            
        }

        public init(serviceabilityType: String, zones: [Zone]) {
            
            self.serviceabilityType = serviceabilityType
            
            self.zones = zones
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                zones = try container.decode([Zone].self, forKey: .zones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}


