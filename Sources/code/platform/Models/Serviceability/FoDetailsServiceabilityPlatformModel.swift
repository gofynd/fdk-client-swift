

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: FoDetails
        Used By: Serviceability
    */

    class FoDetails: Codable {
        
        
        public var serviceabilityType: String
        
        public var activeNonDefaultZoneCount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case activeNonDefaultZoneCount = "active_non_default_zone_count"
            
        }

        public init(activeNonDefaultZoneCount: Int, serviceabilityType: String) {
            
            self.serviceabilityType = serviceabilityType
            
            self.activeNonDefaultZoneCount = activeNonDefaultZoneCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                activeNonDefaultZoneCount = try container.decode(Int.self, forKey: .activeNonDefaultZoneCount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(activeNonDefaultZoneCount, forKey: .activeNonDefaultZoneCount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: FoDetails
        Used By: Serviceability
    */

    class FoDetails: Codable {
        
        
        public var serviceabilityType: String
        
        public var activeNonDefaultZoneCount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case activeNonDefaultZoneCount = "active_non_default_zone_count"
            
        }

        public init(activeNonDefaultZoneCount: Int, serviceabilityType: String) {
            
            self.serviceabilityType = serviceabilityType
            
            self.activeNonDefaultZoneCount = activeNonDefaultZoneCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                activeNonDefaultZoneCount = try container.decode(Int.self, forKey: .activeNonDefaultZoneCount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(activeNonDefaultZoneCount, forKey: .activeNonDefaultZoneCount)
            
            
        }
        
    }
}


