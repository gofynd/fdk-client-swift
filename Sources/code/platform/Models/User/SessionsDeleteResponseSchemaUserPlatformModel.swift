

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: SessionsDeleteResponseSchema
        Used By: User
    */

    class SessionsDeleteResponseSchema: Codable {
        
        
        public var userId: String?
        
        public var sessionIds: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case sessionIds = "session_ids"
            
        }

        public init(sessionIds: [String]? = nil, userId: String? = nil) {
            
            self.userId = userId
            
            self.sessionIds = sessionIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sessionIds = try container.decode([String].self, forKey: .sessionIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(sessionIds, forKey: .sessionIds)
            
            
        }
        
    }
}


