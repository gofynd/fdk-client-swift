import Foundation
public struct FDKError: Codable, Error {
    
    public let message: String
    public var status: Int?    
    public let code: String?
    public let exception: String?
    public let info: String?
    public let requestID: String?
    public let stackTrace: String?
    public let meta: [String: Any]?

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        case status = "status"
        case code = "code"
        case exception = "exception"
        case info = "info"
        case requestID = "request_id"
        case stackTrace = "stack_trace"
        case meta = "meta"
        
        
    }

    public init(message: String, status: Int?, code: String?,
                exception: String?, info: String?, requestID: String?,
                stackTrace: String?, meta: [String: Any]?) {
        self.message = message
        self.status = status
        self.code = code
        self.exception = exception
        self.info = info
        self.requestID = requestID
        self.stackTrace = stackTrace
        self.meta = meta
    }

    public init(message: String) {
        self.message = message
        self.status = nil
        self.code = nil
        self.exception = nil
        self.info = nil
        self.requestID = nil
        self.stackTrace = nil
        self.meta = nil
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        if let value = try? container.decode(String.self, forKey: .message) {
            message = value
        } else {
            message = "Something went wrong [sdk]"
        }
                
        status = try? container.decode(Int.self, forKey: .status)

        code = try? container.decode(String.self, forKey: .code)
        
        exception = try? container.decode(String.self, forKey: .exception)
        
        info = try? container.decode(String.self, forKey: .info)
        
        requestID = try? container.decode(String.self, forKey: .requestID)
        
        stackTrace = try? container.decode(String.self, forKey: .stackTrace)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(status, forKey: .status)
        
        try? container.encodeIfPresent(code, forKey: .code)

        try? container.encodeIfPresent(exception, forKey: .exception)

        try? container.encodeIfPresent(info, forKey: .info)

        try? container.encodeIfPresent(requestID, forKey: .requestID)

        try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

        try? container.encodeIfPresent(meta, forKey: .meta)
    }
}
