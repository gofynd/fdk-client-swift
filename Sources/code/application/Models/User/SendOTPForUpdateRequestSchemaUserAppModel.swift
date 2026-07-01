

import Foundation
public extension ApplicationClient.User {
    /*
        Model: SendOTPForUpdateRequestSchema
        Used By: User
    */
    class SendOTPForUpdateRequestSchema: Codable {
        
        public var requestId: String
        
        public var mobile: String?
        
        public var countryCode: String?
        
        public var email: String?
        
        public var encryptOtp: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
            case email = "email"
            
            case encryptOtp = "encrypt_otp"
            
        }

        public init(countryCode: String? = nil, email: String? = nil, encryptOtp: Bool? = nil, mobile: String? = nil, requestId: String) {
            
            self.requestId = requestId
            
            self.mobile = mobile
            
            self.countryCode = countryCode
            
            self.email = email
            
            self.encryptOtp = encryptOtp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            
            
            
            do {
                mobile = try container.decode(String.self, forKey: .mobile)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                email = try container.decode(String.self, forKey: .email)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                encryptOtp = try container.decode(Bool.self, forKey: .encryptOtp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(encryptOtp, forKey: .encryptOtp)
            
            
        }
        
    }
}
