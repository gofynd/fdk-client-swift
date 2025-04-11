

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkUpdatePerUserAttributesBody
        Used By: User
    */

    class BulkUpdatePerUserAttributesBody: Codable {
        
        
        public var userDetailAttributes: [UserDetailAttributes]
        

        public enum CodingKeys: String, CodingKey {
            
            case userDetailAttributes = "user_detail_attributes"
            
        }

        public init(userDetailAttributes: [UserDetailAttributes]) {
            
            self.userDetailAttributes = userDetailAttributes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userDetailAttributes = try container.decode([UserDetailAttributes].self, forKey: .userDetailAttributes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userDetailAttributes, forKey: .userDetailAttributes)
            
            
        }
        
    }
}


