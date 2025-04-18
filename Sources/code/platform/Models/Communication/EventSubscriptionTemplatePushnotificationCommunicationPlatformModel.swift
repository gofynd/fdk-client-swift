

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventSubscriptionTemplatePushnotification
        Used By: Communication
    */

    class EventSubscriptionTemplatePushnotification: Codable {
        
        
        public var subscribed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case subscribed = "subscribed"
            
        }

        public init(subscribed: Bool? = nil) {
            
            self.subscribed = subscribed
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscribed, forKey: .subscribed)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventSubscriptionTemplatePushnotification
        Used By: Communication
    */

    class EventSubscriptionTemplatePushnotification: Codable {
        
        
        public var subscribed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case subscribed = "subscribed"
            
        }

        public init(subscribed: Bool? = nil) {
            
            self.subscribed = subscribed
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscribed, forKey: .subscribed)
            
            
        }
        
    }
}


