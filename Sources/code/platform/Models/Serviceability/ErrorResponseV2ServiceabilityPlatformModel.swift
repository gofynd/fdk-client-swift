

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ErrorResponseV2
        Used By: Serviceability
    */

    class ErrorResponseV2: Codable {
        
        
        public var value: Bool
        
        public var error: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case error = "error"
            
        }

        public init(error: String, value: Bool) {
            
            self.value = value
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(Bool.self, forKey: .value)
                
            
            
            
                error = try container.decode(String.self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
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
        
        
        public var value: Bool
        
        public var error: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case error = "error"
            
        }

        public init(error: String, value: Bool) {
            
            self.value = value
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(Bool.self, forKey: .value)
                
            
            
            
                error = try container.decode(String.self, forKey: .error)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


