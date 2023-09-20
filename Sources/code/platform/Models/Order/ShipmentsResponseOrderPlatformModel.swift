

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentsResponse
        Used By: Order
    */

    class ShipmentsResponse: Codable {
        
        
        public var status: Int?
        
        public var finalState: [String: Any]?
        
        public var identifier: String?
        
        public var stackTrace: String?
        
        public var code: String?
        
        public var meta: [String: Any]?
        
        public var message: String?
        
        public var exception: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case finalState = "final_state"
            
            case identifier = "identifier"
            
            case stackTrace = "stack_trace"
            
            case code = "code"
            
            case meta = "meta"
            
            case message = "message"
            
            case exception = "exception"
            
        }

        public init(code: String? = nil, exception: String? = nil, finalState: [String: Any]? = nil, identifier: String? = nil, message: String? = nil, meta: [String: Any]? = nil, stackTrace: String? = nil, status: Int? = nil) {
            
            self.status = status
            
            self.finalState = finalState
            
            self.identifier = identifier
            
            self.stackTrace = stackTrace
            
            self.code = code
            
            self.meta = meta
            
            self.message = message
            
            self.exception = exception
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finalState = try container.decode([String: Any].self, forKey: .finalState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
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
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    exception = try container.decode(String.self, forKey: .exception)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(status, forKey: .status)
            
            
            
            
            try? container.encode(finalState, forKey: .finalState)
            
            
            
            
            try? container.encode(identifier, forKey: .identifier)
            
            
            
            
            try? container.encode(stackTrace, forKey: .stackTrace)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(message, forKey: .message)
            
            
            
            
            try? container.encode(exception, forKey: .exception)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentsResponse
        Used By: Order
    */

    class ShipmentsResponse: Codable {
        
        
        public var status: Int?
        
        public var finalState: [String: Any]?
        
        public var identifier: String?
        
        public var stackTrace: String?
        
        public var code: String?
        
        public var meta: [String: Any]?
        
        public var message: String?
        
        public var exception: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case finalState = "final_state"
            
            case identifier = "identifier"
            
            case stackTrace = "stack_trace"
            
            case code = "code"
            
            case meta = "meta"
            
            case message = "message"
            
            case exception = "exception"
            
        }

        public init(code: String? = nil, exception: String? = nil, finalState: [String: Any]? = nil, identifier: String? = nil, message: String? = nil, meta: [String: Any]? = nil, stackTrace: String? = nil, status: Int? = nil) {
            
            self.status = status
            
            self.finalState = finalState
            
            self.identifier = identifier
            
            self.stackTrace = stackTrace
            
            self.code = code
            
            self.meta = meta
            
            self.message = message
            
            self.exception = exception
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finalState = try container.decode([String: Any].self, forKey: .finalState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
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
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    exception = try container.decode(String.self, forKey: .exception)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(status, forKey: .status)
            
            
            
            
            try? container.encode(finalState, forKey: .finalState)
            
            
            
            
            try? container.encode(identifier, forKey: .identifier)
            
            
            
            
            try? container.encode(stackTrace, forKey: .stackTrace)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(message, forKey: .message)
            
            
            
            
            try? container.encode(exception, forKey: .exception)
            
            
        }
        
    }
}


