

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneOverrideSchema
        Used By: Serviceability
    */

    class ZoneOverrideSchema: Codable {
        
        
        public var allowOverride: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case allowOverride = "allow_override"
            
        }

        public init(allowOverride: Bool) {
            
            self.allowOverride = allowOverride
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                allowOverride = try container.decode(Bool.self, forKey: .allowOverride)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowOverride, forKey: .allowOverride)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneOverrideSchema
        Used By: Serviceability
    */

    class ZoneOverrideSchema: Codable {
        
        
        public var allowOverride: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case allowOverride = "allow_override"
            
        }

        public init(allowOverride: Bool) {
            
            self.allowOverride = allowOverride
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                allowOverride = try container.decode(Bool.self, forKey: .allowOverride)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowOverride, forKey: .allowOverride)
            
            
        }
        
    }
}


