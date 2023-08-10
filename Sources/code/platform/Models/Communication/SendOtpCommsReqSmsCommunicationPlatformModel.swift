

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SendOtpCommsReqSms
        Used By: Communication
    */

    class SendOtpCommsReqSms: Codable {
        
        
        public var otpLength: Int?
        
        public var expiry: Int?
        
        public var template: SendOtpSmsCommsTemplate?
        
        public var provider: SendOtpSmsCommsProvider?
        

        public enum CodingKeys: String, CodingKey {
            
            case otpLength = "otp_length"
            
            case expiry = "expiry"
            
            case template = "template"
            
            case provider = "provider"
            
        }

        public init(expiry: Int? = nil, otpLength: Int? = nil, provider: SendOtpSmsCommsProvider? = nil, template: SendOtpSmsCommsTemplate? = nil) {
            
            self.otpLength = otpLength
            
            self.expiry = expiry
            
            self.template = template
            
            self.provider = provider
            
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
                    template = try container.decode(SendOtpSmsCommsTemplate.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    provider = try container.decode(SendOtpSmsCommsProvider.self, forKey: .provider)
                
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
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SendOtpCommsReqSms
        Used By: Communication
    */

    class SendOtpCommsReqSms: Codable {
        
        
        public var otpLength: Int?
        
        public var expiry: Int?
        
        public var template: SendOtpSmsCommsTemplate?
        
        public var provider: SendOtpSmsCommsProvider?
        

        public enum CodingKeys: String, CodingKey {
            
            case otpLength = "otp_length"
            
            case expiry = "expiry"
            
            case template = "template"
            
            case provider = "provider"
            
        }

        public init(expiry: Int? = nil, otpLength: Int? = nil, provider: SendOtpSmsCommsProvider? = nil, template: SendOtpSmsCommsTemplate? = nil) {
            
            self.otpLength = otpLength
            
            self.expiry = expiry
            
            self.template = template
            
            self.provider = provider
            
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
                    template = try container.decode(SendOtpSmsCommsTemplate.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    provider = try container.decode(SendOtpSmsCommsProvider.self, forKey: .provider)
                
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
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
        }
        
    }
}


