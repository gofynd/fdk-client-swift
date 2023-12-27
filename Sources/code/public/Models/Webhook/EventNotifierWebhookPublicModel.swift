

import Foundation
public extension PublicClient.Webhook {
    /*
        Model: EventNotifier
        Used By: Webhook
    */

    class EventNotifier: Codable {
        
        
        public var message: String?
        
        public var emails: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case emails = "emails"
            
        }

        public init(emails: [String]? = nil, message: String? = nil) {
            
            self.message = message
            
            self.emails = emails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emails = try container.decode([String].self, forKey: .emails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
        }
        
    }
}
