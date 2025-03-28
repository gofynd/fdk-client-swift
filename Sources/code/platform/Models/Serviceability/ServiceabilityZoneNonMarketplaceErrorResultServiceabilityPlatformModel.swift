

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ServiceabilityZoneNonMarketplaceErrorResult
        Used By: Serviceability
    */

    class ServiceabilityZoneNonMarketplaceErrorResult: Codable {
        
        
        public var error: String
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: String) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode(String.self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ServiceabilityZoneNonMarketplaceErrorResult
        Used By: Serviceability
    */

    class ServiceabilityZoneNonMarketplaceErrorResult: Codable {
        
        
        public var error: String
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
        }

        public init(error: String) {
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode(String.self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


