

import Foundation


public extension PlatformClient.Content {
    /*
        Model: PageResponseError
        Used By: Content
    */

    class PageResponseError: Codable {
        
        
        public var errors: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
        }

        public init(errors: String? = nil) {
            
            self.errors = errors
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errors = try container.decode(String.self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: PageResponseError
        Used By: Content
    */

    class PageResponseError: Codable {
        
        
        public var errors: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
        }

        public init(errors: String? = nil) {
            
            self.errors = errors
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errors = try container.decode(String.self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
        }
        
    }
}


