

import Foundation


public extension PlatformClient.Content {
    /*
        Model: FieldValidation
        Used By: Content
    */

    class FieldValidation: Codable {
        
        
        public var pattern: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pattern = "pattern"
            
            case message = "message"
            
        }

        public init(message: String? = nil, pattern: String? = nil) {
            
            self.pattern = pattern
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pattern = try container.decode(String.self, forKey: .pattern)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pattern, forKey: .pattern)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: FieldValidation
        Used By: Content
    */

    class FieldValidation: Codable {
        
        
        public var pattern: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pattern = "pattern"
            
            case message = "message"
            
        }

        public init(message: String? = nil, pattern: String? = nil) {
            
            self.pattern = pattern
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pattern = try container.decode(String.self, forKey: .pattern)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pattern, forKey: .pattern)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


