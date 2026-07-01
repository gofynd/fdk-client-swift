

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CreditDetail
        Used By: Payment
    */
    class CreditDetail: Codable {
        
        public var status: Bool
        
        public var isRegistered: Bool
        
        public var signupUrl: String?
        
        public var availableCredit: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case isRegistered = "is_registered"
            
            case signupUrl = "signup_url"
            
            case availableCredit = "available_credit"
            
        }

        public init(availableCredit: Double? = nil, isRegistered: Bool, signupUrl: String? = nil, status: Bool) {
            
            self.status = status
            
            self.isRegistered = isRegistered
            
            self.signupUrl = signupUrl
            
            self.availableCredit = availableCredit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            status = try container.decode(Bool.self, forKey: .status)
            
            
            
            
            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)
            
            
            
            
            do {
                signupUrl = try container.decode(String.self, forKey: .signupUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                availableCredit = try container.decode(Double.self, forKey: .availableCredit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)
            
            
            
            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
            
            
            
            try? container.encodeIfPresent(availableCredit, forKey: .availableCredit)
            
            
        }
        
    }
}
