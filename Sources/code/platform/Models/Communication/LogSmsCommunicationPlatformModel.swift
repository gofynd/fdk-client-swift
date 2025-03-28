

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: LogSms
        Used By: Communication
    */

    class LogSms: Codable {
        
        
        public var template: String?
        
        public var provider: String?
        
        public var phoneNumber: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case template = "template"
            
            case provider = "provider"
            
            case phoneNumber = "phone_number"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: String? = nil, phoneNumber: String? = nil, provider: String? = nil, template: String? = nil) {
            
            self.template = template
            
            self.provider = provider
            
            self.phoneNumber = phoneNumber
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    template = try container.decode(String.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    provider = try container.decode(String.self, forKey: .provider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: LogSms
        Used By: Communication
    */

    class LogSms: Codable {
        
        
        public var template: String?
        
        public var provider: String?
        
        public var phoneNumber: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case template = "template"
            
            case provider = "provider"
            
            case phoneNumber = "phone_number"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: String? = nil, phoneNumber: String? = nil, provider: String? = nil, template: String? = nil) {
            
            self.template = template
            
            self.provider = provider
            
            self.phoneNumber = phoneNumber
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    template = try container.decode(String.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    provider = try container.decode(String.self, forKey: .provider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}


