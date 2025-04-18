

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ValidateProduct
        Used By: Catalog
    */

    class ValidateProduct: Codable {
        
        
        public var valid: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case valid = "valid"
            
            case message = "message"
            
        }

        public init(message: String? = nil, valid: Bool? = nil) {
            
            self.valid = valid
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    valid = try container.decode(Bool.self, forKey: .valid)
                
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
            
            
            
            try? container.encodeIfPresent(valid, forKey: .valid)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ValidateProduct
        Used By: Catalog
    */

    class ValidateProduct: Codable {
        
        
        public var valid: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case valid = "valid"
            
            case message = "message"
            
        }

        public init(message: String? = nil, valid: Bool? = nil) {
            
            self.valid = valid
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    valid = try container.decode(Bool.self, forKey: .valid)
                
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
            
            
            
            try? container.encodeIfPresent(valid, forKey: .valid)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


