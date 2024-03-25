

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ErrorResponse
        Used By: Payment
    */
    class ErrorResponse: Codable {
        
        public var statusCode: Int?
        
        public var error: ErrorDescription?
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(error: ErrorDescription? = nil, message: String, statusCode: Int? = nil, success: Bool) {
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.message = message
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                statusCode = try container.decode(Int.self, forKey: .statusCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                error = try container.decode(ErrorDescription.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
