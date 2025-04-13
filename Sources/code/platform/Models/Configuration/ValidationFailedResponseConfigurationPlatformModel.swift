

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: ValidationFailedResponse
        Used By: Configuration
    */

    class ValidationFailedResponse: Codable {
        
        
        public var message: String?
        
        public var errors: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errors = "errors"
            
        }

        public init(errors: [[String: Any]]? = nil, message: String? = nil) {
            
            self.message = message
            
            self.errors = errors
            
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
                    errors = try container.decode([[String: Any]].self, forKey: .errors)
                
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
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: ValidationFailedResponse
        Used By: Configuration
    */

    class ValidationFailedResponse: Codable {
        
        
        public var message: String?
        
        public var errors: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errors = "errors"
            
        }

        public init(errors: [[String: Any]]? = nil, message: String? = nil) {
            
            self.message = message
            
            self.errors = errors
            
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
                    errors = try container.decode([[String: Any]].self, forKey: .errors)
                
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
            
            
        }
        
    }
}


