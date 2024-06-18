

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: MethodChecks
        Used By: Billing
    */

    class MethodChecks: Codable {
        
        
        public var addressLine1Check: String?
        
        public var addressPostalCodeCheck: String?
        
        public var cvcCheck: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case addressLine1Check = "address_line1_check"
            
            case addressPostalCodeCheck = "address_postal_code_check"
            
            case cvcCheck = "cvc_check"
            
        }

        public init(addressLine1Check: String? = nil, addressPostalCodeCheck: String? = nil, cvcCheck: String? = nil) {
            
            self.addressLine1Check = addressLine1Check
            
            self.addressPostalCodeCheck = addressPostalCodeCheck
            
            self.cvcCheck = cvcCheck
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    addressLine1Check = try container.decode(String.self, forKey: .addressLine1Check)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressPostalCodeCheck = try container.decode(String.self, forKey: .addressPostalCodeCheck)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cvcCheck = try container.decode(String.self, forKey: .cvcCheck)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addressLine1Check, forKey: .addressLine1Check)
            
            
            
            
            try? container.encodeIfPresent(addressPostalCodeCheck, forKey: .addressPostalCodeCheck)
            
            
            
            
            try? container.encodeIfPresent(cvcCheck, forKey: .cvcCheck)
            
            
        }
        
    }
}




