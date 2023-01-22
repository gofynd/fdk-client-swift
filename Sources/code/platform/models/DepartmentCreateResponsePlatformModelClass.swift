

import Foundation
public extension PlatformClient {
    /*
        Model: DepartmentCreateResponse
        Used By: Catalog
    */

    class DepartmentCreateResponse: Codable {
        
        
        public var uid: Int
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case message = "message"
            
        }

        public init(message: String, uid: Int) {
            
            self.uid = uid
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
