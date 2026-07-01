

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: DeleteUserGroupSuccess
        Used By: User
    */

    class DeleteUserGroupSuccess: Codable {
        
        
        public var id: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case success = "success"
            
        }

        public init(id: String, success: Bool) {
            
            self.id = id
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


