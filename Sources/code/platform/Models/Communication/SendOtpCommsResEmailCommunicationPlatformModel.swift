

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SendOtpCommsResEmail
        Used By: Communication
    */

    class SendOtpCommsResEmail: Codable {
        
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var to: String?
        
        public var resendTimer: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case to = "to"
            
            case resendTimer = "resend_timer"
            
        }

        public init(message: String? = nil, requestId: String? = nil, resendTimer: Int? = nil, success: Bool? = nil, to: String? = nil) {
            
            self.success = success
            
            self.requestId = requestId
            
            self.message = message
            
            self.to = to
            
            self.resendTimer = resendTimer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    to = try container.decode(String.self, forKey: .to)
                
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
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(to, forKey: .to)
            
            
            
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SendOtpCommsResEmail
        Used By: Communication
    */

    class SendOtpCommsResEmail: Codable {
        
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var to: String?
        
        public var resendTimer: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case to = "to"
            
            case resendTimer = "resend_timer"
            
        }

        public init(message: String? = nil, requestId: String? = nil, resendTimer: Int? = nil, success: Bool? = nil, to: String? = nil) {
            
            self.success = success
            
            self.requestId = requestId
            
            self.message = message
            
            self.to = to
            
            self.resendTimer = resendTimer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    to = try container.decode(String.self, forKey: .to)
                
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
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(to, forKey: .to)
            
            
            
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            
        }
        
    }
}


