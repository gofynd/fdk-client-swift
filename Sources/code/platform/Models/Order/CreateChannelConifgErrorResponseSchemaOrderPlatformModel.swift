

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateChannelConifgErrorResponseSchema
        Used By: Order
    */

    class CreateChannelConifgErrorResponseSchema: Codable {
        
        
        public var error: String?
        
        public var requestId: String?
        
        public var status: Int
        
        public var info: [String: Any]?
        
        public var stackTrace: String?
        
        public var code: String?
        
        public var meta: String?
        
        public var message: String
        
        public var exception: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case requestId = "request_id"
            
            case status = "status"
            
            case info = "info"
            
            case stackTrace = "stack_trace"
            
            case code = "code"
            
            case meta = "meta"
            
            case message = "message"
            
            case exception = "exception"
            
        }

        public init(code: String? = nil, error: String? = nil, exception: String? = nil, info: [String: Any]? = nil, message: String, meta: String? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int) {
            
            self.error = error
            
            self.requestId = requestId
            
            self.status = status
            
            self.info = info
            
            self.stackTrace = stackTrace
            
            self.code = code
            
            self.meta = meta
            
            self.message = message
            
            self.exception = exception
            
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
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(Int.self, forKey: .status)
                
            
            
            
                do {
                    info = try container.decode([String: Any].self, forKey: .info)
                
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
                    meta = try container.decode(String.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
            
            
            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateChannelConifgErrorResponseSchema
        Used By: Order
    */

    class CreateChannelConifgErrorResponseSchema: Codable {
        
        
        public var error: String?
        
        public var requestId: String?
        
        public var status: Int
        
        public var info: [String: Any]?
        
        public var stackTrace: String?
        
        public var code: String?
        
        public var meta: String?
        
        public var message: String
        
        public var exception: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case requestId = "request_id"
            
            case status = "status"
            
            case info = "info"
            
            case stackTrace = "stack_trace"
            
            case code = "code"
            
            case meta = "meta"
            
            case message = "message"
            
            case exception = "exception"
            
        }

        public init(code: String? = nil, error: String? = nil, exception: String? = nil, info: [String: Any]? = nil, message: String, meta: String? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int) {
            
            self.error = error
            
            self.requestId = requestId
            
            self.status = status
            
            self.info = info
            
            self.stackTrace = stackTrace
            
            self.code = code
            
            self.meta = meta
            
            self.message = message
            
            self.exception = exception
            
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
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(Int.self, forKey: .status)
                
            
            
            
                do {
                    info = try container.decode([String: Any].self, forKey: .info)
                
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
                    meta = try container.decode(String.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
            
            
            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
        }
        
    }
}


