

import Foundation
public extension ApplicationClient.Communication {
    /*
        Model: OtpConfiguration
        Used By: Communication
    */
    class OtpConfiguration: Codable {
        
        public var otpLength: Int
        
        public var type: String
        
        public var expiry: OtpConfigurationExpiry
        
        public var rateLimit: OtpConfigurationRateLimit?
        

        public enum CodingKeys: String, CodingKey {
            
            case otpLength = "otp_length"
            
            case type = "type"
            
            case expiry = "expiry"
            
            case rateLimit = "rate_limit"
            
        }

        public init(expiry: OtpConfigurationExpiry, otpLength: Int, rateLimit: OtpConfigurationRateLimit? = nil, type: String) {
            
            self.otpLength = otpLength
            
            self.type = type
            
            self.expiry = expiry
            
            self.rateLimit = rateLimit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            otpLength = try container.decode(Int.self, forKey: .otpLength)
            
            
            
            
            type = try container.decode(String.self, forKey: .type)
            
            
            
            
            expiry = try container.decode(OtpConfigurationExpiry.self, forKey: .expiry)
            
            
            
            
            do {
                rateLimit = try container.decode(OtpConfigurationRateLimit.self, forKey: .rateLimit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(otpLength, forKey: .otpLength)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
            
            
            try? container.encodeIfPresent(rateLimit, forKey: .rateLimit)
            
            
        }
        
    }
}
