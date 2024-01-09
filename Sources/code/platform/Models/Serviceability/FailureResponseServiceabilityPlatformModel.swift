

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: FailureResponse
        Used By: Serviceability
    */

    class FailureResponse: Codable {
        
        
        public var statusCode: Int
        
        public var error: [ErrorResponse]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(error: [ErrorResponse], statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                error = try container.decode([ErrorResponse].self, forKey: .error)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: FailureResponse
        Used By: Serviceability
    */

    class FailureResponse: Codable {
        
        
        public var statusCode: Int
        
        public var error: [ErrorResponse]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(error: [ErrorResponse], statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                error = try container.decode([ErrorResponse].self, forKey: .error)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


