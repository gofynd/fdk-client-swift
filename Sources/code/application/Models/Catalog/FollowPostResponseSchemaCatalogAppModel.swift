

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: FollowPostResponseSchema
        Used By: Catalog
    */
    class FollowPostResponseSchema: Codable {
        
        public var message: String
        
        public var id: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case id = "id"
            
        }

        public init(id: String, message: String) {
            
            self.message = message
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}
