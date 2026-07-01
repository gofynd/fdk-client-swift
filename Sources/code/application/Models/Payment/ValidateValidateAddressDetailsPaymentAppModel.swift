

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateValidateAddressDetails
        Used By: Payment
    */
    class ValidateValidateAddressDetails: Codable {
        
        public var upi: VPADetails?
        
        public var success: Bool
        
        public var ifsc: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case upi = "upi"
            
            case success = "success"
            
            case ifsc = "ifsc"
            
        }

        public init(ifsc: [String: Any]? = nil, success: Bool, upi: VPADetails? = nil) {
            
            self.upi = upi
            
            self.success = success
            
            self.ifsc = ifsc
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                upi = try container.decode(VPADetails.self, forKey: .upi)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                ifsc = try container.decode([String: Any].self, forKey: .ifsc)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(ifsc, forKey: .ifsc)
            
            
        }
        
    }
}
