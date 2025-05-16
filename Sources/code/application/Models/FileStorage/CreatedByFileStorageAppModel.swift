

import Foundation
public extension ApplicationClient.FileStorage {
    /*
        Model: CreatedBy
        Used By: FileStorage
    */
    class CreatedBy: Codable {
        
        public var username: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
        }

        public init(username: String? = nil) {
            
            self.username = username
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
        }
        
    }
}
