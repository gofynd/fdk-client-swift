

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ErrorResponseV2
        Used By: Serviceability
    */

    class ErrorResponseV2: Codable {
        
        
        public var success: Bool
        
        public var error: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: String, success: Bool) {
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                error = try container.decode(String.self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ErrorResponseV2
        Used By: Serviceability
    */

    class ErrorResponseV2: Codable {
        
        
        public var success: Bool
        
        public var error: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: String, success: Bool) {
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                error = try container.decode(String.self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


