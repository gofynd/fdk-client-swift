

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RedirectURL
        Used By: Payment
    */
    class RedirectURL: Codable {
        
        public var status: Bool
        
        public var signupUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case signupUrl = "signup_url"
            
        }

        public init(signupUrl: String, status: Bool) {
            
            self.status = status
            
            self.signupUrl = signupUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            status = try container.decode(Bool.self, forKey: .status)
            
            
            
            
            signupUrl = try container.decode(String.self, forKey: .signupUrl)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
            
            
        }
        
    }
}
