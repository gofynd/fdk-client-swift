

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: LinkStatus
        Used By: Payment
    */

    class LinkStatus: Codable {
        
        
        public var status: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case message = "message"
            
        }

        public init(message: String, status: String) {
            
            self.status = status
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: LinkStatus
        Used By: Payment
    */

    class LinkStatus: Codable {
        
        
        public var status: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case message = "message"
            
        }

        public init(message: String, status: String) {
            
            self.status = status
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


