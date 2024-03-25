

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PennyDropValidationResponse
        Used By: Payment
    */

    class PennyDropValidationResponse: Codable {
        
        
        public var success: Bool
        
        public var message: String
        
        public var allowPennydropValidation: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case allowPennydropValidation = "allow_pennydrop_validation"
            
        }

        public init(allowPennydropValidation: Bool, message: String, success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.allowPennydropValidation = allowPennydropValidation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                allowPennydropValidation = try container.decode(Bool.self, forKey: .allowPennydropValidation)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(allowPennydropValidation, forKey: .allowPennydropValidation)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PennyDropValidationResponse
        Used By: Payment
    */

    class PennyDropValidationResponse: Codable {
        
        
        public var success: Bool
        
        public var message: String
        
        public var allowPennydropValidation: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case allowPennydropValidation = "allow_pennydrop_validation"
            
        }

        public init(allowPennydropValidation: Bool, message: String, success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.allowPennydropValidation = allowPennydropValidation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                allowPennydropValidation = try container.decode(Bool.self, forKey: .allowPennydropValidation)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(allowPennydropValidation, forKey: .allowPennydropValidation)
            
            
        }
        
    }
}


