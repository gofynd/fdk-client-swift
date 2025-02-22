

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ModifiedBy
        Used By: Catalog
    */
    class ModifiedBy: Codable {
        
        public var userId: String?
        
        public var username: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case username = "username"
            
        }

        public init(username: String? = nil, userId: String? = nil) {
            
            self.userId = userId
            
            self.username = username
            
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
                username = try container.decode(String.self, forKey: .username)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
        }
        
    }
}
