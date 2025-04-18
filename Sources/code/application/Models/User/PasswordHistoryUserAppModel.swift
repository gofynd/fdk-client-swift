

import Foundation
public extension ApplicationClient.User {
    /*
        Model: PasswordHistory
        Used By: User
    */
    class PasswordHistory: Codable {
        
        public var required: Bool?
        
        public var count: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case required = "required"
            
            case count = "count"
            
        }

        public init(count: Double? = nil, required: Bool? = nil) {
            
            self.required = required
            
            self.count = count
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                required = try container.decode(Bool.self, forKey: .required)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                count = try container.decode(Double.self, forKey: .count)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
}
