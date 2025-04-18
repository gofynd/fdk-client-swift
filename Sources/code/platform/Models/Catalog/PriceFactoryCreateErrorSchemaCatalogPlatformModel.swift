

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceFactoryCreateErrorSchema
        Used By: Catalog
    */

    class PriceFactoryCreateErrorSchema: Codable {
        
        
        public var message: String?
        
        public var error: PriceFactoryErrorSchema?
        
        public var code: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case error = "error"
            
            case code = "code"
            
        }

        public init(code: Int? = nil, error: PriceFactoryErrorSchema? = nil, message: String? = nil) {
            
            self.message = message
            
            self.error = error
            
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
                    error = try container.decode(PriceFactoryErrorSchema.self, forKey: .error)
                
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
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceFactoryCreateErrorSchema
        Used By: Catalog
    */

    class PriceFactoryCreateErrorSchema: Codable {
        
        
        public var message: String?
        
        public var error: PriceFactoryErrorSchema?
        
        public var code: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case error = "error"
            
            case code = "code"
            
        }

        public init(code: Int? = nil, error: PriceFactoryErrorSchema? = nil, message: String? = nil) {
            
            self.message = message
            
            self.error = error
            
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
                    error = try container.decode(PriceFactoryErrorSchema.self, forKey: .error)
                
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
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
}


