

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneOverrideStatusResponseSchema
        Used By: Serviceability
    */

    class ZoneOverrideStatusResponseSchema: Codable {
        
        
        public var overridingProcessStatus: String
        

        public enum CodingKeys: String, CodingKey {
            
            case overridingProcessStatus = "overriding_process_status"
            
        }

        public init(overridingProcessStatus: String) {
            
            self.overridingProcessStatus = overridingProcessStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                overridingProcessStatus = try container.decode(String.self, forKey: .overridingProcessStatus)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(overridingProcessStatus, forKey: .overridingProcessStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneOverrideStatusResponseSchema
        Used By: Serviceability
    */

    class ZoneOverrideStatusResponseSchema: Codable {
        
        
        public var overridingProcessStatus: String
        

        public enum CodingKeys: String, CodingKey {
            
            case overridingProcessStatus = "overriding_process_status"
            
        }

        public init(overridingProcessStatus: String) {
            
            self.overridingProcessStatus = overridingProcessStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                overridingProcessStatus = try container.decode(String.self, forKey: .overridingProcessStatus)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(overridingProcessStatus, forKey: .overridingProcessStatus)
            
            
        }
        
    }
}


