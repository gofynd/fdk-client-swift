

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ErrorResponseSchema
        Used By: Logistic
    */
    class ErrorResponseSchema: Codable {
        
        public var error: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case message = "message"
            
        }

        public init(error: String? = nil, message: String? = nil) {
            
            self.error = error
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                error = try container.decode(String.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
