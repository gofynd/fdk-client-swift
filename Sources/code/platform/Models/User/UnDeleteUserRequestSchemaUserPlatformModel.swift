

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UnDeleteUserRequestSchema
        Used By: User
    */

    class UnDeleteUserRequestSchema: Codable {
        
        
        public var userId: String
        
        public var reason: String
        
        public var reasonId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case reason = "reason"
            
            case reasonId = "reason_id"
            
        }

        public init(reason: String, reasonId: String, userId: String) {
            
            self.userId = userId
            
            self.reason = reason
            
            self.reasonId = reasonId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
            
                reason = try container.decode(String.self, forKey: .reason)
                
            
            
            
                reasonId = try container.decode(String.self, forKey: .reasonId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(reasonId, forKey: .reasonId)
            
            
        }
        
    }
}


