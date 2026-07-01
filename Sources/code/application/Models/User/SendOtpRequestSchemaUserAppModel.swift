

import Foundation
public extension ApplicationClient.User {
    /*
        Model: SendOtpRequestSchema
        Used By: User
    */
    class SendOtpRequestSchema: Codable {
        
        public var encryptOtp: Bool?
        
        public var countryCode: String?
        
        public var mobile: String?
        
        public var androidHash: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case encryptOtp = "encrypt_otp"
            
            case countryCode = "country_code"
            
            case mobile = "mobile"
            
            case androidHash = "android_hash"
            
        }

        public init(androidHash: String? = nil, countryCode: String? = nil, encryptOtp: Bool? = nil, mobile: String? = nil) {
            
            self.encryptOtp = encryptOtp
            
            self.countryCode = countryCode
            
            self.mobile = mobile
            
            self.androidHash = androidHash
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                encryptOtp = try container.decode(Bool.self, forKey: .encryptOtp)
            
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
                mobile = try container.decode(String.self, forKey: .mobile)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                androidHash = try container.decode(String.self, forKey: .androidHash)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(encryptOtp, forKey: .encryptOtp)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(androidHash, forKey: .androidHash)
            
            
        }
        
    }
}
