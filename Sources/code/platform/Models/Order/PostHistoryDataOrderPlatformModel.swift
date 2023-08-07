

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PostHistoryData
        Used By: Order
    */

    class PostHistoryData: Codable {
        
        
        public var userName: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userName = "user_name"
            
            case message = "message"
            
        }

        public init(message: String, userName: String) {
            
            self.userName = userName
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userName = try container.decode(String.self, forKey: .userName)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userName, forKey: .userName)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PostHistoryData
        Used By: Order
    */

    class PostHistoryData: Codable {
        
        
        public var userName: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userName = "user_name"
            
            case message = "message"
            
        }

        public init(message: String, userName: String) {
            
            self.userName = userName
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userName = try container.decode(String.self, forKey: .userName)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userName, forKey: .userName)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


