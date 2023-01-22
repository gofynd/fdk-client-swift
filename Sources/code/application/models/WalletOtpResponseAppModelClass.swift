

import Foundation
public extension ApplicationClient {
    /*
        Model: WalletOtpResponse
        Used By: Payment
    */
    class WalletOtpResponse: Codable {
        
        public var isVerifiedFlag: String
        
        public var success: Bool?
        
        public var requestId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isVerifiedFlag = "is_verified_flag"
            
            case success = "success"
            
            case requestId = "request_id"
            
        }

        public init(isVerifiedFlag: String, requestId: String, success: Bool? = nil) {
            
            self.isVerifiedFlag = isVerifiedFlag
            
            self.success = success
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
            
            
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}
