

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ServiceabilityZoneErrorResponseSchema
        Used By: Logistic
    */
    class ServiceabilityZoneErrorResponseSchema: Codable {
        
        public var error: [ServiceabilityErrorResponseSchema]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(error: [ServiceabilityErrorResponseSchema], success: Bool) {
            
            self.error = error
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            error = try container.decode([ServiceabilityErrorResponseSchema].self, forKey: .error)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
