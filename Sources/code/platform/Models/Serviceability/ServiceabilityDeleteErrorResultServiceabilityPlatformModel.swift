

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ServiceabilityDeleteErrorResult
        Used By: Serviceability
    */

    class ServiceabilityDeleteErrorResult: Codable {
        
        
        public var error: [ServiceabilityErrorResult]
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: [ServiceabilityErrorResult]) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode([ServiceabilityErrorResult].self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ServiceabilityDeleteErrorResult
        Used By: Serviceability
    */

    class ServiceabilityDeleteErrorResult: Codable {
        
        
        public var error: [ServiceabilityErrorResult]
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: [ServiceabilityErrorResult]) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode([ServiceabilityErrorResult].self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


