

import Foundation
public extension ApplicationClient.Finance {
    /*
        Model: Error
        Used By: Finance
    */
    class Error: Codable {
        
        public var status: Int?
        
        public var reason: String?
        
        public var success: Bool?
        
        public var message: String?
        
        public var code: String?
        
        public var exception: String?
        
        public var info: String?
        
        public var requestId: String?
        
        public var stackTrace: String?
        
        public var meta: ErrorMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case reason = "reason"
            
            case success = "success"
            
            case message = "message"
            
            case code = "code"
            
            case exception = "exception"
            
            case info = "info"
            
            case requestId = "request_id"
            
            case stackTrace = "stack_trace"
            
            case meta = "meta"
            
        }

        public init(code: String? = nil, exception: String? = nil, info: String? = nil, message: String? = nil, meta: ErrorMeta? = nil, reason: String? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int? = nil, success: Bool? = nil) {
            
            self.status = status
            
            self.reason = reason
            
            self.success = success
            
            self.message = message
            
            self.code = code
            
            self.exception = exception
            
            self.info = info
            
            self.requestId = requestId
            
            self.stackTrace = stackTrace
            
            self.meta = meta
            
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
                reason = try container.decode(String.self, forKey: .reason)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
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
                code = try container.decode(String.self, forKey: .code)
            
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
                info = try container.decode(String.self, forKey: .info)
            
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
            
            
            
            do {
                stackTrace = try container.decode(String.self, forKey: .stackTrace)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode(ErrorMeta.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
