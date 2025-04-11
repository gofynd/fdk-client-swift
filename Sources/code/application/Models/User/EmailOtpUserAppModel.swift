

import Foundation
public extension ApplicationClient.User {
    /*
        Model: EmailOtp
        Used By: User
    */
    class EmailOtp: Codable {
        
        public var requestId: String?
        
        public var resendTimer: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case resendTimer = "resend_timer"
            
        }

        public init(requestId: String? = nil, resendTimer: Int? = nil) {
            
            self.requestId = requestId
            
            self.resendTimer = resendTimer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                requestId = try container.decode(String.self, forKey: .requestId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                resendTimer = try container.decode(Int.self, forKey: .resendTimer)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            
        }
        
    }
}
