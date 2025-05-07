

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BlockUserRequestSchema
        Used By: User
    */

    class BlockUserRequestSchema: Codable {
        
        
        public var status: Bool
        
        public var userId: [String]
        
        public var reason: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case userId = "user_id"
            
            case reason = "reason"
            
        }

        public init(reason: String, status: Bool, userId: [String]) {
            
            self.status = status
            
            self.userId = userId
            
            self.reason = reason
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(Bool.self, forKey: .status)
                
            
            
            
                userId = try container.decode([String].self, forKey: .userId)
                
            
            
            
                reason = try container.decode(String.self, forKey: .reason)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}


