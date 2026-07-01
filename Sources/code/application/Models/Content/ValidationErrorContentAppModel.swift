

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: ValidationError
        Used By: Content
    */
    class ValidationError: Codable {
        
        public var message: String
        
        public var field: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case field = "field"
            
        }

        public init(field: String, message: String) {
            
            self.message = message
            
            self.field = field
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            field = try container.decode(String.self, forKey: .field)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(field, forKey: .field)
            
            
        }
        
    }
}
