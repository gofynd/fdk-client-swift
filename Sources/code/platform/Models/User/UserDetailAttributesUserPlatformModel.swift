

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserDetailAttributes
        Used By: User
    */

    class UserDetailAttributes: Codable {
        
        
        public var userId: String?
        
        public var attributes: [BulkUpdatePerUserAttributes]?
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case attributes = "attributes"
            
        }

        public init(attributes: [BulkUpdatePerUserAttributes]? = nil, userId: String? = nil) {
            
            self.userId = userId
            
            self.attributes = attributes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([BulkUpdatePerUserAttributes].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
        }
        
    }
}


