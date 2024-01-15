

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: TemplateObject
        Used By: Communication
    */

    class TemplateObject: Codable {
        
        
        public var sms: CommunicationTemplate?
        
        public var email: CommunicationTemplate?
        
        public var pushnotification: CommunicationTemplate?
        

        public enum CodingKeys: String, CodingKey {
            
            case sms = "sms"
            
            case email = "email"
            
            case pushnotification = "pushnotification"
            
        }

        public init(email: CommunicationTemplate? = nil, pushnotification: CommunicationTemplate? = nil, sms: CommunicationTemplate? = nil) {
            
            self.sms = sms
            
            self.email = email
            
            self.pushnotification = pushnotification
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sms = try container.decode(CommunicationTemplate.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(CommunicationTemplate.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pushnotification = try container.decode(CommunicationTemplate.self, forKey: .pushnotification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(pushnotification, forKey: .pushnotification)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: TemplateObject
        Used By: Communication
    */

    class TemplateObject: Codable {
        
        
        public var sms: CommunicationTemplate?
        
        public var email: CommunicationTemplate?
        
        public var pushnotification: CommunicationTemplate?
        

        public enum CodingKeys: String, CodingKey {
            
            case sms = "sms"
            
            case email = "email"
            
            case pushnotification = "pushnotification"
            
        }

        public init(email: CommunicationTemplate? = nil, pushnotification: CommunicationTemplate? = nil, sms: CommunicationTemplate? = nil) {
            
            self.sms = sms
            
            self.email = email
            
            self.pushnotification = pushnotification
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sms = try container.decode(CommunicationTemplate.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(CommunicationTemplate.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pushnotification = try container.decode(CommunicationTemplate.self, forKey: .pushnotification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(pushnotification, forKey: .pushnotification)
            
            
        }
        
    }
}


