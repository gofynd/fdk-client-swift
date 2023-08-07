

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateVPARequest
        Used By: Payment
    */
    class ValidateVPARequest: Codable {
        
        public var upiVpa: String
        

        public enum CodingKeys: String, CodingKey {
            
            case upiVpa = "upi_vpa"
            
        }

        public init(upiVpa: String) {
            
            self.upiVpa = upiVpa
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            upiVpa = try container.decode(String.self, forKey: .upiVpa)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)
            
            
        }
        
    }
}
