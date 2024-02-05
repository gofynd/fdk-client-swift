

import Foundation
public extension ApplicationClient.User {
    /*
        Model: HasPasswordSuccess
        Used By: User
    */
    class HasPasswordSuccess: Codable {
        
        public var result: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case result = "result"
            
        }

        public init(result: Int? = nil) {
            
            self.result = result
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                result = try container.decode(Int.self, forKey: .result)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(result, forKey: .result)
            
            
        }
        
    }
}
