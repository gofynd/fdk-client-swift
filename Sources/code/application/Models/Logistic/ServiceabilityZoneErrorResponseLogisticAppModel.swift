

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ServiceabilityZoneErrorResponse
        Used By: Logistic
    */
    class ServiceabilityZoneErrorResponse: Codable {
        
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
