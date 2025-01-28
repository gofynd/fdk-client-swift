

import Foundation
public extension ApplicationClient.User {
    /*
        Model: CodeRequestBodySchema
        Used By: User
    */
    class CodeRequestBodySchema: Codable {
        
        public var code: String
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
        }

        public init(code: String) {
            
            self.code = code
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            code = try container.decode(String.self, forKey: .code)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
}
