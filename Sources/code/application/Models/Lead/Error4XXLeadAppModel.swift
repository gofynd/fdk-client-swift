

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: Error4XX
        Used By: Lead
    */
    class Error4XX: Codable {
        
        public var message: [String: Any]?
        
        public var stack: String?
        
        public var sentry: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case stack = "stack"
            
            case sentry = "sentry"
            
        }

        public init(message: [String: Any]? = nil, sentry: String? = nil, stack: String? = nil) {
            
            self.message = message
            
            self.stack = stack
            
            self.sentry = sentry
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                message = try container.decode([String: Any].self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                stack = try container.decode(String.self, forKey: .stack)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sentry = try container.decode(String.self, forKey: .sentry)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(stack, forKey: .stack)
            
            
            
            try? container.encodeIfPresent(sentry, forKey: .sentry)
            
            
        }
        
    }
}
