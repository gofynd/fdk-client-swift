

import Foundation
public extension ApplicationClient.User {
    /*
        Model: DeleteApplicationUserRequestSchema
        Used By: User
    */
    class DeleteApplicationUserRequestSchema: Codable {
        
        public var userId: String
        
        public var reason: String
        
        public var reasonId: String
        
        public var requestId: String?
        
        public var otp: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case reason = "reason"
            
            case reasonId = "reason_id"
            
            case requestId = "request_id"
            
            case otp = "otp"
            
        }

        public init(otp: String, reason: String, reasonId: String, requestId: String? = nil, userId: String) {
            
            self.userId = userId
            
            self.reason = reason
            
            self.reasonId = reasonId
            
            self.requestId = requestId
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            userId = try container.decode(String.self, forKey: .userId)
            
            
            
            
            reason = try container.decode(String.self, forKey: .reason)
            
            
            
            
            reasonId = try container.decode(String.self, forKey: .reasonId)
            
            
            
            
            do {
                requestId = try container.decode(String.self, forKey: .requestId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            otp = try container.decode(String.self, forKey: .otp)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            try? container.encodeIfPresent(reasonId, forKey: .reasonId)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}
