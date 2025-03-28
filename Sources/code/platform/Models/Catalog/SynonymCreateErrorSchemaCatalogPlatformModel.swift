

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SynonymCreateErrorSchema
        Used By: Catalog
    */

    class SynonymCreateErrorSchema: Codable {
        
        
        public var message: String?
        
        public var errors: [String: Any]?
        
        public var code: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errors = "errors"
            
            case code = "code"
            
        }

        public init(code: Int? = nil, errors: [String: Any]? = nil, message: String? = nil) {
            
            self.message = message
            
            self.errors = errors
            
            self.code = code
            
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
                    errors = try container.decode([String: Any].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(Int.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SynonymCreateErrorSchema
        Used By: Catalog
    */

    class SynonymCreateErrorSchema: Codable {
        
        
        public var message: String?
        
        public var errors: [String: Any]?
        
        public var code: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errors = "errors"
            
            case code = "code"
            
        }

        public init(code: Int? = nil, errors: [String: Any]? = nil, message: String? = nil) {
            
            self.message = message
            
            self.errors = errors
            
            self.code = code
            
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
                    errors = try container.decode([String: Any].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(Int.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
}


