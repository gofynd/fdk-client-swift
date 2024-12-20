

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneSuccessResult
        Used By: Serviceability
    */

    class ZoneSuccessResult: Codable {
        
        
        public var statusCode: Int
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneSuccessResult
        Used By: Serviceability
    */

    class ZoneSuccessResult: Codable {
        
        
        public var statusCode: Int
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


