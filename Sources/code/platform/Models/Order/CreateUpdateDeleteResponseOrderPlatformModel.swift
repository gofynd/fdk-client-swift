

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateUpdateDeleteResponse
        Used By: Order
    */

    class CreateUpdateDeleteResponse: Codable {
        
        
        public var message: String?
        
        public var errors: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errors = "errors"
            
        }

        public init(errors: [String]? = nil, message: String? = nil) {
            
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
                    errors = try container.decode([String].self, forKey: .errors)
                
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



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateUpdateDeleteResponse
        Used By: Order
    */

    class CreateUpdateDeleteResponse: Codable {
        
        
        public var message: String?
        
        public var errors: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errors = "errors"
            
        }

        public init(errors: [String]? = nil, message: String? = nil) {
            
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
                    errors = try container.decode([String].self, forKey: .errors)
                
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


