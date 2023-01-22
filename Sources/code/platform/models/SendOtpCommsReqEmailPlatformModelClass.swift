

import Foundation
public extension PlatformClient {
    /*
        Model: SendOtpCommsReqEmail
        Used By: Communication
    */

    class SendOtpCommsReqEmail: Codable {
        
        
        public var otpLength: Int?
        
        public var expiry: Int?
        
        public var template: SendOtpEmailCommsTemplate?
        

        public enum CodingKeys: String, CodingKey {
            
            case otpLength = "otp_length"
            
            case expiry = "expiry"
            
            case template = "template"
            
        }

        public init(expiry: Int? = nil, otpLength: Int? = nil, template: SendOtpEmailCommsTemplate? = nil) {
            
            self.otpLength = otpLength
            
            self.expiry = expiry
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    otpLength = try container.decode(Int.self, forKey: .otpLength)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expiry = try container.decode(Int.self, forKey: .expiry)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    template = try container.decode(SendOtpEmailCommsTemplate.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(otpLength, forKey: .otpLength)
            
            
            
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}
