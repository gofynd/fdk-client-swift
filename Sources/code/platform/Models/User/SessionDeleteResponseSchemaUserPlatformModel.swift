

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: SessionDeleteResponseSchema
        Used By: User
    */

    class SessionDeleteResponseSchema: Codable {
        
        
        public var userId: String?
        
        public var sessionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case sessionId = "session_id"
            
        }

        public init(sessionId: String? = nil, userId: String? = nil) {
            
            self.userId = userId
            
            self.sessionId = sessionId
            
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
                    sessionId = try container.decode(String.self, forKey: .sessionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(sessionId, forKey: .sessionId)
            
            
        }
        
    }
}


