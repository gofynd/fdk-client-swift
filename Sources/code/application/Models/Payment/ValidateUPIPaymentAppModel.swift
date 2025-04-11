

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateUPI
        Used By: Payment
    */
    class ValidateUPI: Codable {
        
        public var status: Bool
        
        public var customerName: String?
        
        public var isValid: Bool
        
        public var upiVpa: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case customerName = "customer_name"
            
            case isValid = "is_valid"
            
            case upiVpa = "upi_vpa"
            
        }

        public init(customerName: String? = nil, isValid: Bool, status: Bool, upiVpa: String) {
            
            self.status = status
            
            self.customerName = customerName
            
            self.isValid = isValid
            
            self.upiVpa = upiVpa
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            status = try container.decode(Bool.self, forKey: .status)
            
            
            
            
            do {
                customerName = try container.decode(String.self, forKey: .customerName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
