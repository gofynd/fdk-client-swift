

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventSubscriptionTemplateEmail
        Used By: Communication
    */

    class EventSubscriptionTemplateEmail: Codable {
        
        
        public var subscribed: Bool?
        
        public var template: EmailTemplate?
        

        public enum CodingKeys: String, CodingKey {
            
            case subscribed = "subscribed"
            
            case template = "template"
            
        }

        public init(subscribed: Bool? = nil, template: EmailTemplate? = nil) {
            
            self.subscribed = subscribed
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subscribed = try container.decode(Bool.self, forKey: .subscribed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    template = try container.decode(EmailTemplate.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscribed, forKey: .subscribed)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventSubscriptionTemplateEmail
        Used By: Communication
    */

    class EventSubscriptionTemplateEmail: Codable {
        
        
        public var subscribed: Bool?
        
        public var template: EmailTemplate?
        

        public enum CodingKeys: String, CodingKey {
            
            case subscribed = "subscribed"
            
            case template = "template"
            
        }

        public init(subscribed: Bool? = nil, template: EmailTemplate? = nil) {
            
            self.subscribed = subscribed
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subscribed = try container.decode(Bool.self, forKey: .subscribed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    template = try container.decode(EmailTemplate.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscribed, forKey: .subscribed)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}


