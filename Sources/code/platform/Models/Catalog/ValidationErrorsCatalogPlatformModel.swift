

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ValidationErrors
        Used By: Catalog
    */

    class ValidationErrors: Codable {
        
        
        public var errors: [ValidationError]
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
        }

        public init(errors: [ValidationError]) {
            
            self.errors = errors
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                errors = try container.decode([ValidationError].self, forKey: .errors)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ValidationErrors
        Used By: Catalog
    */

    class ValidationErrors: Codable {
        
        
        public var errors: [ValidationError]
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
        }

        public init(errors: [ValidationError]) {
            
            self.errors = errors
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                errors = try container.decode([ValidationError].self, forKey: .errors)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
        }
        
    }
}


