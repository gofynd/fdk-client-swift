

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ServiceabilityZoneErrorResult
        Used By: Serviceability
    */

    class ServiceabilityZoneErrorResult: Codable {
        
        
        public var error: [ServiceabilityErrorResponseSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: [ServiceabilityErrorResponseSchema]) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode([ServiceabilityErrorResponseSchema].self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ServiceabilityZoneErrorResult
        Used By: Serviceability
    */

    class ServiceabilityZoneErrorResult: Codable {
        
        
        public var error: [ServiceabilityErrorResponseSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: [ServiceabilityErrorResponseSchema]) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode([ServiceabilityErrorResponseSchema].self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


