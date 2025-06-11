

import Foundation
public extension ApplicationClient.User {
    /*
        Model: PlatformPassword
        Used By: User
    */
    class PlatformPassword: Codable {
        
        public var isRequired: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isRequired = "is_required"
            
        }

        public init(isRequired: Bool? = nil) {
            
            self.isRequired = isRequired
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                isRequired = try container.decode(Bool.self, forKey: .isRequired)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isRequired, forKey: .isRequired)
            
            
        }
        
    }
}
