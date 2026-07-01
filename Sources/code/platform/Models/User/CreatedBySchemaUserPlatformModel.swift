

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreatedBySchema
        Used By: User
    */

    class CreatedBySchema: Codable {
        
        
        public var name: String
        
        public var userId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case userId = "user_id"
            
        }

        public init(name: String, userId: String) {
            
            self.name = name
            
            self.userId = userId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
        }
        
    }
}


