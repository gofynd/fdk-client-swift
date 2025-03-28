

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: UpdateAppProvidersGlobalProviderResEmailSmsObj
        Used By: Communication
    */

    class UpdateAppProvidersGlobalProviderResEmailSmsObj: Codable {
        
        
        public var defaultProvider: String?
        
        public var otpProvider: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case defaultProvider = "default_provider"
            
            case otpProvider = "otp_provider"
            
        }

        public init(defaultProvider: String? = nil, otpProvider: String? = nil) {
            
            self.defaultProvider = defaultProvider
            
            self.otpProvider = otpProvider
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    defaultProvider = try container.decode(String.self, forKey: .defaultProvider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otpProvider = try container.decode(String.self, forKey: .otpProvider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(defaultProvider, forKey: .defaultProvider)
            
            
            
            
            try? container.encodeIfPresent(otpProvider, forKey: .otpProvider)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: UpdateAppProvidersGlobalProviderResEmailSmsObj
        Used By: Communication
    */

    class UpdateAppProvidersGlobalProviderResEmailSmsObj: Codable {
        
        
        public var defaultProvider: String?
        
        public var otpProvider: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case defaultProvider = "default_provider"
            
            case otpProvider = "otp_provider"
            
        }

        public init(defaultProvider: String? = nil, otpProvider: String? = nil) {
            
            self.defaultProvider = defaultProvider
            
            self.otpProvider = otpProvider
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    defaultProvider = try container.decode(String.self, forKey: .defaultProvider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otpProvider = try container.decode(String.self, forKey: .otpProvider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(defaultProvider, forKey: .defaultProvider)
            
            
            
            
            try? container.encodeIfPresent(otpProvider, forKey: .otpProvider)
            
            
        }
        
    }
}


