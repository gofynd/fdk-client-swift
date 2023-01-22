

import Foundation
public extension PlatformClient {
    /*
        Model: SendOtpCommsReqData
        Used By: Communication
    */

    class SendOtpCommsReqData: Codable {
        
        
        public var sendSameOtpToChannel: Bool?
        
        public var mobile: String?
        
        public var countryCode: String?
        
        public var to: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sendSameOtpToChannel = "send_same_otp_to_channel"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
            case to = "to"
            
        }

        public init(countryCode: String? = nil, mobile: String? = nil, sendSameOtpToChannel: Bool? = nil, to: String? = nil) {
            
            self.sendSameOtpToChannel = sendSameOtpToChannel
            
            self.mobile = mobile
            
            self.countryCode = countryCode
            
            self.to = to
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sendSameOtpToChannel = try container.decode(Bool.self, forKey: .sendSameOtpToChannel)
                
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
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sendSameOtpToChannel, forKey: .sendSameOtpToChannel)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(to, forKey: .to)
            
            
        }
        
    }
}
