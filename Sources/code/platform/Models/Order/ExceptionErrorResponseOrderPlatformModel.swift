

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ExceptionErrorResponse
        Used By: Order
    */

    class ExceptionErrorResponse: Codable {
        
        
        public var message: String?
        
        public var exception: String?
        
        public var stackTrace: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case exception = "exception"
            
            case stackTrace = "stack_trace"
            
        }

        public init(exception: String? = nil, message: String? = nil, stackTrace: String? = nil) {
            
            self.message = message
            
            self.exception = exception
            
            self.stackTrace = stackTrace
            
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
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
            
            
            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ExceptionErrorResponse
        Used By: Order
    */

    class ExceptionErrorResponse: Codable {
        
        
        public var message: String?
        
        public var exception: String?
        
        public var stackTrace: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case exception = "exception"
            
            case stackTrace = "stack_trace"
            
        }

        public init(exception: String? = nil, message: String? = nil, stackTrace: String? = nil) {
            
            self.message = message
            
            self.exception = exception
            
            self.stackTrace = stackTrace
            
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
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
            
            
            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)
            
            
        }
        
    }
}


