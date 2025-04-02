

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ErrorResponse
        Used By: Catalog
    */
    class ErrorResponse: Codable {
        
        public var error: String?
        
        public var errors: [String: Any]?
        
        public var code: Int?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case errors = "errors"
            
            case code = "code"
            
            case message = "message"
            
        }

        public init(code: Int? = nil, error: String? = nil, errors: [String: Any]? = nil, message: String? = nil) {
            
            self.error = error
            
            self.errors = errors
            
            self.code = code
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                error = try container.decode(String.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                errors = try container.decode([String: Any].self, forKey: .errors)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
