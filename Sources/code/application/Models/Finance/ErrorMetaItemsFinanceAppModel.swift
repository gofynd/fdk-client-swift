

import Foundation
public extension ApplicationClient.Finance {
    /*
        Model: ErrorMetaItems
        Used By: Finance
    */
    class ErrorMetaItems: Codable {
        
        public var code: Int?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case message = "message"
            
        }

        public init(code: Int? = nil, message: String? = nil) {
            
            self.code = code
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                code = try container.decode(Int.self, forKey: .code)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
