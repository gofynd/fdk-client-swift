

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: UpdatePennyDropValidationRequest
        Used By: Payment
    */

    class UpdatePennyDropValidationRequest: Codable {
        
        
        public var allowPennydropValidation: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case allowPennydropValidation = "allow_pennydrop_validation"
            
        }

        public init(allowPennydropValidation: Bool) {
            
            self.allowPennydropValidation = allowPennydropValidation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                allowPennydropValidation = try container.decode(Bool.self, forKey: .allowPennydropValidation)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowPennydropValidation, forKey: .allowPennydropValidation)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: UpdatePennyDropValidationRequest
        Used By: Payment
    */

    class UpdatePennyDropValidationRequest: Codable {
        
        
        public var allowPennydropValidation: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case allowPennydropValidation = "allow_pennydrop_validation"
            
        }

        public init(allowPennydropValidation: Bool) {
            
            self.allowPennydropValidation = allowPennydropValidation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                allowPennydropValidation = try container.decode(Bool.self, forKey: .allowPennydropValidation)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowPennydropValidation, forKey: .allowPennydropValidation)
            
            
        }
        
    }
}


