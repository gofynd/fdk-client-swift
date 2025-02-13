

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: OtpConfiguration
        Used By: Communication
    */

    class OtpConfiguration: Codable {
        
        
        public var otpLength: Int
        
        public var type: String
        
        public var expiry: OtpConfigurationExpiry
        
        public var applicationId: String?
        
        public var companyId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case otpLength = "otp_length"
            
            case type = "type"
            
            case expiry = "expiry"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(applicationId: String? = nil, companyId: String? = nil, expiry: OtpConfigurationExpiry, otpLength: Int, type: String) {
            
            self.otpLength = otpLength
            
            self.type = type
            
            self.expiry = expiry
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                otpLength = try container.decode(Int.self, forKey: .otpLength)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                expiry = try container.decode(OtpConfigurationExpiry.self, forKey: .expiry)
                
            
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
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
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: OtpConfiguration
        Used By: Communication
    */

    class OtpConfiguration: Codable {
        
        
        public var otpLength: Int
        
        public var type: String
        
        public var expiry: OtpConfigurationExpiry
        
        public var applicationId: String?
        
        public var companyId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case otpLength = "otp_length"
            
            case type = "type"
            
            case expiry = "expiry"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(applicationId: String? = nil, companyId: String? = nil, expiry: OtpConfigurationExpiry, otpLength: Int, type: String) {
            
            self.otpLength = otpLength
            
            self.type = type
            
            self.expiry = expiry
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                otpLength = try container.decode(Int.self, forKey: .otpLength)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                expiry = try container.decode(OtpConfigurationExpiry.self, forKey: .expiry)
                
            
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
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
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}


