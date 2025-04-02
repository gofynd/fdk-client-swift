

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: WalletOtpResponse
        Used By: Payment
    */
    class WalletOtpResponse: Codable {
        
        public var requestId: String?
        
        public var isVerifiedFlag: Bool
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case isVerifiedFlag = "is_verified_flag"
            
            case success = "success"
            
        }

        public init(isVerifiedFlag: Bool, requestId: String? = nil, success: Bool? = nil) {
            
            self.requestId = requestId
            
            self.isVerifiedFlag = isVerifiedFlag
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                requestId = try container.decode(String.self, forKey: .requestId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
            
            
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
