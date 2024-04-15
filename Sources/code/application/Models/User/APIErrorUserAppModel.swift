

import Foundation
public extension ApplicationClient.User {
    /*
        Model: APIError
        Used By: User
    */
    class APIError: Codable {
        
        public var code: String?
        
        public var message: String?
        
        public var info: String?
        
        public var requestId: String?
        
        public var error: String?
        
        public var meta: [String: Any]?
        
        public var authenticated: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case message = "message"
            
            case info = "info"
            
            case requestId = "request_id"
            
            case error = "error"
            
            case meta = "meta"
            
            case authenticated = "authenticated"
            
        }

        public init(authenticated: Bool? = nil, code: String? = nil, error: String? = nil, info: String? = nil, message: String? = nil, meta: [String: Any]? = nil, requestId: String? = nil) {
            
            self.code = code
            
            self.message = message
            
            self.info = info
            
            self.requestId = requestId
            
            self.error = error
            
            self.meta = meta
            
            self.authenticated = authenticated
            
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
                error = try container.decode(String.self, forKey: .error)
            
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
                authenticated = try container.decode(Bool.self, forKey: .authenticated)
            
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
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(authenticated, forKey: .authenticated)
            
            
        }
        
    }
}
