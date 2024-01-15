

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateUPI
        Used By: Payment
    */
    class ValidateUPI: Codable {
        
        public var status: String
        
        public var customerName: String
        
        public var isValid: Bool
        
        public var upiVpa: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case customerName = "customer_name"
            
            case isValid = "is_valid"
            
            case upiVpa = "upi_vpa"
            
        }

        public init(customerName: String, isValid: Bool, status: String, upiVpa: String) {
            
            self.status = status
            
            self.customerName = customerName
            
            self.isValid = isValid
            
            self.upiVpa = upiVpa
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            status = try container.decode(String.self, forKey: .status)
            
            
            
            
            customerName = try container.decode(String.self, forKey: .customerName)
            
            
            
            
            isValid = try container.decode(Bool.self, forKey: .isValid)
            
            
            
            
            upiVpa = try container.decode(String.self, forKey: .upiVpa)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(customerName, forKey: .customerName)
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)
            
            
        }
        
    }
}
