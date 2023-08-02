

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AttachUserOtpData
        Used By: Order
    */

    class AttachUserOtpData: Codable {
        
        
        public var requestId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
        }

        public init(requestId: String) {
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AttachUserOtpData
        Used By: Order
    */

    class AttachUserOtpData: Codable {
        
        
        public var requestId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
        }

        public init(requestId: String) {
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}


