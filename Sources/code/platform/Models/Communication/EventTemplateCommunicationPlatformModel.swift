

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventTemplate
        Used By: Communication
    */

    class EventTemplate: Codable {
        
        
        public var email: EventProviderTemplates?
        
        public var pushnotification: EventProviderTemplates?
        
        public var sms: EventProviderTemplates?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case pushnotification = "pushnotification"
            
            case sms = "sms"
            
        }

        public init(email: EventProviderTemplates? = nil, pushnotification: EventProviderTemplates? = nil, sms: EventProviderTemplates? = nil) {
            
            self.email = email
            
            self.pushnotification = pushnotification
            
            self.sms = sms
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(EventProviderTemplates.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pushnotification = try container.decode(EventProviderTemplates.self, forKey: .pushnotification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode(EventProviderTemplates.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(pushnotification, forKey: .pushnotification)
            
            
            
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventTemplate
        Used By: Communication
    */

    class EventTemplate: Codable {
        
        
        public var email: EventProviderTemplates?
        
        public var pushnotification: EventProviderTemplates?
        
        public var sms: EventProviderTemplates?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case pushnotification = "pushnotification"
            
            case sms = "sms"
            
        }

        public init(email: EventProviderTemplates? = nil, pushnotification: EventProviderTemplates? = nil, sms: EventProviderTemplates? = nil) {
            
            self.email = email
            
            self.pushnotification = pushnotification
            
            self.sms = sms
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(EventProviderTemplates.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pushnotification = try container.decode(EventProviderTemplates.self, forKey: .pushnotification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode(EventProviderTemplates.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(pushnotification, forKey: .pushnotification)
            
            
            
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            
        }
        
    }
}


