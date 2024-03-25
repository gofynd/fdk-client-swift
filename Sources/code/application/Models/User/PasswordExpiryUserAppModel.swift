

import Foundation
public extension ApplicationClient.User {
    /*
        Model: PasswordExpiry
        Used By: User
    */
    class PasswordExpiry: Codable {
        
        public var required: Bool?
        
        public var duration: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case required = "required"
            
            case duration = "duration"
            
        }

        public init(duration: Double? = nil, required: Bool? = nil) {
            
            self.required = required
            
            self.duration = duration
            
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
                duration = try container.decode(Double.self, forKey: .duration)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
        }
        
    }
}
