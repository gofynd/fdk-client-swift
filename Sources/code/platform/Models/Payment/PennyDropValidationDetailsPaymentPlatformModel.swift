

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PennyDropValidationDetails
        Used By: Payment
    */

    class PennyDropValidationDetails: Codable {
        
        
        public var success: Bool
        
        public var message: String?
        
        public var allowPennydropValidation: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case allowPennydropValidation = "allow_pennydrop_validation"
            
        }

        public init(allowPennydropValidation: Bool, message: String? = nil, success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.allowPennydropValidation = allowPennydropValidation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
        Model: PennyDropValidationDetails
        Used By: Payment
    */

    class PennyDropValidationDetails: Codable {
        
        
        public var success: Bool
        
        public var message: String?
        
        public var allowPennydropValidation: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case allowPennydropValidation = "allow_pennydrop_validation"
            
        }

        public init(allowPennydropValidation: Bool, message: String? = nil, success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.allowPennydropValidation = allowPennydropValidation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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


