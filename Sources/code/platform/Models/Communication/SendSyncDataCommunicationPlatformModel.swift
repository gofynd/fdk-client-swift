

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SendSyncData
        Used By: Communication
    */

    class SendSyncData: Codable {
        
        
        public var phoneNumber: String?
        
        public var countryCode: String?
        
        public var to: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phoneNumber = "phone_number"
            
            case countryCode = "country_code"
            
            case to = "to"
            
        }

        public init(countryCode: String? = nil, phoneNumber: String? = nil, to: String? = nil) {
            
            self.phoneNumber = phoneNumber
            
            self.countryCode = countryCode
            
            self.to = to
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(to, forKey: .to)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SendSyncData
        Used By: Communication
    */

    class SendSyncData: Codable {
        
        
        public var phoneNumber: String?
        
        public var countryCode: String?
        
        public var to: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phoneNumber = "phone_number"
            
            case countryCode = "country_code"
            
            case to = "to"
            
        }

        public init(countryCode: String? = nil, phoneNumber: String? = nil, to: String? = nil) {
            
            self.phoneNumber = phoneNumber
            
            self.countryCode = countryCode
            
            self.to = to
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(to, forKey: .to)
            
            
        }
        
    }
}


