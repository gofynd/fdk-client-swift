

import Foundation
public extension PlatformClient {
    /*
        Model: SendOtpRequestSchema
        Used By: User
    */

    class SendOtpRequestSchema: Codable {
        
        
        public var countryCode: String?
        
        public var captchaCode: String?
        
        public var mobile: String?
        
        public var androidHash: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case captchaCode = "captcha_code"
            
            case mobile = "mobile"
            
            case androidHash = "android_hash"
            
        }

        public init(androidHash: String? = nil, captchaCode: String? = nil, countryCode: String? = nil, mobile: String? = nil) {
            
            self.countryCode = countryCode
            
            self.captchaCode = captchaCode
            
            self.mobile = mobile
            
            self.androidHash = androidHash
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    captchaCode = try container.decode(String.self, forKey: .captchaCode)
                
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
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(captchaCode, forKey: .captchaCode)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(androidHash, forKey: .androidHash)
            
            
        }
        
    }
}
