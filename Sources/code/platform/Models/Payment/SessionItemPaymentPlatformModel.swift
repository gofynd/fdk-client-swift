

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SessionItem
        Used By: Payment
    */

    class SessionItem: Codable {
        
        
        public var type: String?
        
        public var uriPath: String?
        
        public var contentType: String?
        
        public var methods: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case uriPath = "uri_path"
            
            case contentType = "content_type"
            
            case methods = "methods"
            
        }

        public init(contentType: String? = nil, methods: [String]? = nil, type: String? = nil, uriPath: String? = nil) {
            
            self.type = type
            
            self.uriPath = uriPath
            
            self.contentType = contentType
            
            self.methods = methods
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uriPath = try container.decode(String.self, forKey: .uriPath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contentType = try container.decode(String.self, forKey: .contentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    methods = try container.decode([String].self, forKey: .methods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uriPath, forKey: .uriPath)
            
            
            
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            
            
            
            try? container.encodeIfPresent(methods, forKey: .methods)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SessionItem
        Used By: Payment
    */

    class SessionItem: Codable {
        
        
        public var type: String?
        
        public var uriPath: String?
        
        public var contentType: String?
        
        public var methods: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case uriPath = "uri_path"
            
            case contentType = "content_type"
            
            case methods = "methods"
            
        }

        public init(contentType: String? = nil, methods: [String]? = nil, type: String? = nil, uriPath: String? = nil) {
            
            self.type = type
            
            self.uriPath = uriPath
            
            self.contentType = contentType
            
            self.methods = methods
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uriPath = try container.decode(String.self, forKey: .uriPath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contentType = try container.decode(String.self, forKey: .contentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    methods = try container.decode([String].self, forKey: .methods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uriPath, forKey: .uriPath)
            
            
            
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            
            
            
            try? container.encodeIfPresent(methods, forKey: .methods)
            
            
        }
        
    }
}


