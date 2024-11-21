

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreatedBySchema
        Used By: Catalog
    */

    class CreatedBySchema: Codable {
        
        
        public var userId: String
        
        public var username: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case username = "username"
            
        }

        public init(username: String, userId: String) {
            
            self.userId = userId
            
            self.username = username
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
            
                username = try container.decode(String.self, forKey: .username)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreatedBySchema
        Used By: Catalog
    */

    class CreatedBySchema: Codable {
        
        
        public var userId: String
        
        public var username: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case username = "username"
            
        }

        public init(username: String, userId: String) {
            
            self.userId = userId
            
            self.username = username
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
            
                username = try container.decode(String.self, forKey: .username)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
        }
        
    }
}


