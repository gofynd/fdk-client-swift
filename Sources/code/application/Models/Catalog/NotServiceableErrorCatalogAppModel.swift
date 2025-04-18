

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: NotServiceableError
        Used By: Catalog
    */
    class NotServiceableError: Codable {
        
        public var message: String?
        
        public var isServiceable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case isServiceable = "is_serviceable"
            
        }

        public init(isServiceable: Bool? = nil, message: String? = nil) {
            
            self.message = message
            
            self.isServiceable = isServiceable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isServiceable = try container.decode(Bool.self, forKey: .isServiceable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(isServiceable, forKey: .isServiceable)
            
            
        }
        
    }
}
