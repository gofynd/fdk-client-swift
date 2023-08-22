

import Foundation


public extension PlatformClient.Order {
    /*
        Model: VerifyOtpData
        Used By: Order
    */

    class VerifyOtpData: Codable {
        
        
        public var requestId: String
        
        public var mobile: String
        
        public var otpCode: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case mobile = "mobile"
            
            case otpCode = "otp_code"
            
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            
            self.requestId = requestId
            
            self.mobile = mobile
            
            self.otpCode = otpCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
            
                otpCode = try container.decode(Int.self, forKey: .otpCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: VerifyOtpData
        Used By: Order
    */

    class VerifyOtpData: Codable {
        
        
        public var requestId: String
        
        public var mobile: String
        
        public var otpCode: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case mobile = "mobile"
            
            case otpCode = "otp_code"
            
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            
            self.requestId = requestId
            
            self.mobile = mobile
            
            self.otpCode = otpCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
            
                otpCode = try container.decode(Int.self, forKey: .otpCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
            
            
        }
        
    }
}


