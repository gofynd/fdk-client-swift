

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ServiceabilityDeleteErrorResponse
        Used By: Serviceability
    */

    class ServiceabilityDeleteErrorResponse: Codable {
        
        
        public var error: [ServiceabilityErrorResponse]
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: [ServiceabilityErrorResponse]) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode([ServiceabilityErrorResponse].self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ServiceabilityDeleteErrorResponse
        Used By: Serviceability
    */

    class ServiceabilityDeleteErrorResponse: Codable {
        
        
        public var error: [ServiceabilityErrorResponse]
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: [ServiceabilityErrorResponse]) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode([ServiceabilityErrorResponse].self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


