

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: SubscriberFailureResponse
        Used By: Webhook
    */

    class SubscriberFailureResponse: Codable {
        
        
        public var message: String?
        
        public var code: String?
        
        public var stack: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case code = "code"
            
            case stack = "stack"
            
        }

        public init(code: String? = nil, message: String? = nil, stack: String? = nil) {
            
            self.message = message
            
            self.code = code
            
            self.stack = stack
            
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
                    code = try container.decode(String.self, forKey: .code)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(stack, forKey: .stack)
            
            
        }
        
    }
}




