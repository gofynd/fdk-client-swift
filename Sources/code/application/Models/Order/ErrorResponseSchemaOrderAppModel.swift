

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ErrorResponseSchema
        Used By: Order
    */
    class ErrorResponseSchema: Codable {
        
        public var code: String?
        
        public var message: String?
        
        public var status: Int?
        
        public var exception: String?
        
        public var stackTrace: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case message = "message"
            
            case status = "status"
            
            case exception = "exception"
            
            case stackTrace = "stack_trace"
            
        }

        public init(code: String? = nil, exception: String? = nil, message: String? = nil, stackTrace: String? = nil, status: Int? = nil) {
            
            self.code = code
            
            self.message = message
            
            self.status = status
            
            self.exception = exception
            
            self.stackTrace = stackTrace
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
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
            
            
            
            do {
                status = try container.decode(Int.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                exception = try container.decode(String.self, forKey: .exception)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                stackTrace = try container.decode(String.self, forKey: .stackTrace)
            
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
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
            
            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)
            
            
        }
        
    }
}
