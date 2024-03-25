

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: UserPasswordHistory
        Used By: Lead
    */
    class UserPasswordHistory: Codable {
        
        public var salt: String?
        
        public var hash: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case salt = "salt"
            
            case hash = "hash"
            
        }

        public init(hash: String? = nil, salt: String? = nil) {
            
            self.salt = salt
            
            self.hash = hash
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                salt = try container.decode(String.self, forKey: .salt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                hash = try container.decode(String.self, forKey: .hash)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(salt, forKey: .salt)
            
            
            
            try? container.encodeIfPresent(hash, forKey: .hash)
            
            
        }
        
    }
}
