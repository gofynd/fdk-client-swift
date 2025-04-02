

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AddBeneficiaryDetailsOTPResponse
        Used By: Payment
    */
    class AddBeneficiaryDetailsOTPResponse: Codable {
        
        public var success: Bool?
        
        public var data: [BankDetailsForOTP]?
        
        public var message: String?
        
        public var isVerifiedFlag: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case message = "message"
            
            case isVerifiedFlag = "is_verified_flag"
            
        }

        public init(data: [BankDetailsForOTP]? = nil, isVerifiedFlag: Bool? = nil, message: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.data = data
            
            self.message = message
            
            self.isVerifiedFlag = isVerifiedFlag
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                data = try container.decode([BankDetailsForOTP].self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
        }
        
    }
}
