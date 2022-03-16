import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: AddProxyReq
        Used By: Partner
    */

    class AddProxyReq: Codable {
        
        
        public var attachedPath: String?
        
        public var proxyUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case attachedPath = "attached_path"
            
            case proxyUrl = "proxy_url"
            
        }

        public init(attachedPath: String?, proxyUrl: String?) {
            
            self.attachedPath = attachedPath
            
            self.proxyUrl = proxyUrl
            
        }

        public func duplicate() -> AddProxyReq {
            let dict = self.dictionary!
            let copy = AddProxyReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attachedPath = try container.decode(String.self, forKey: .attachedPath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    proxyUrl = try container.decode(String.self, forKey: .proxyUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attachedPath, forKey: .attachedPath)
            
            
            
            
            try? container.encodeIfPresent(proxyUrl, forKey: .proxyUrl)
            
            
        }
        
    }
    
    /*
        Model: AddProxyResponse
        Used By: Partner
    */

    class AddProxyResponse: Codable {
        
        
        public var id: String?
        
        public var attachedPath: String?
        
        public var proxyUrl: String?
        
        public var companyId: String?
        
        public var applicationId: String?
        
        public var extensionId: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case attachedPath = "attached_path"
            
            case proxyUrl = "proxy_url"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case extensionId = "extension_id"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
        }

        public init(applicationId: String?, attachedPath: String?, companyId: String?, createdAt: String?, extensionId: String?, modifiedAt: String?, proxyUrl: String?, id: String?) {
            
            self.id = id
            
            self.attachedPath = attachedPath
            
            self.proxyUrl = proxyUrl
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.extensionId = extensionId
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
        }

        public func duplicate() -> AddProxyResponse {
            let dict = self.dictionary!
            let copy = AddProxyResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attachedPath = try container.decode(String.self, forKey: .attachedPath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    proxyUrl = try container.decode(String.self, forKey: .proxyUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(attachedPath, forKey: .attachedPath)
            
            
            
            
            try? container.encodeIfPresent(proxyUrl, forKey: .proxyUrl)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
        }
        
    }
    
    /*
        Model: APIError
        Used By: Partner
    */

    class APIError: Codable {
        
        
        public var code: String?
        
        public var message: String?
        
        public var info: String?
        
        public var requestId: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case message = "message"
            
            case info = "info"
            
            case requestId = "request_id"
            
            case meta = "meta"
            
        }

        public init(code: String?, info: String?, message: String?, meta: [String: Any]?, requestId: String?) {
            
            self.code = code
            
            self.message = message
            
            self.info = info
            
            self.requestId = requestId
            
            self.meta = meta
            
        }

        public func duplicate() -> APIError {
            let dict = self.dictionary!
            let copy = APIError(dictionary: dict)!
            return copy
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
    
    /*
        Model: RemoveProxyResponse
        Used By: Partner
    */

    class RemoveProxyResponse: Codable {
        
        
        public var message: String?
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case data = "data"
            
        }

        public init(data: [String: Any]?, message: String?) {
            
            self.message = message
            
            self.data = data
            
        }

        public func duplicate() -> RemoveProxyResponse {
            let dict = self.dictionary!
            let copy = RemoveProxyResponse(dictionary: dict)!
            return copy
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
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
}
