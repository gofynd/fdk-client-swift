

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: SendOtpToCustomerResponseSchema
        Used By: Order
    */
    class SendOtpToCustomerResponseSchema: Codable {
        
        public var requestId: String?
        
        public var message: String?
        
        public var success: Bool?
        
        public var resendTimer: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case message = "message"
            
            case success = "success"
            
            case resendTimer = "resend_timer"
            
        }

        public init(message: String? = nil, requestId: String? = nil, resendTimer: Int? = nil, success: Bool? = nil) {
            
            self.requestId = requestId
            
            self.message = message
            
            self.success = success
            
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
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
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
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            
        }
        
    }
}
