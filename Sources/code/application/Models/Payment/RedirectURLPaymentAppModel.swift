

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RedirectURL
        Used By: Payment
    */
    class RedirectURL: Codable {
        
        public var status: Bool
        
        public var signupUrl: String?
        
        public var redirectUrl: String?
        
        public var extra: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case signupUrl = "signup_url"
            
            case redirectUrl = "redirect_url"
            
            case extra = "extra"
            
        }

        public init(extra: String? = nil, redirectUrl: String? = nil, signupUrl: String? = nil, status: Bool) {
            
            self.status = status
            
            self.signupUrl = signupUrl
            
            self.redirectUrl = redirectUrl
            
            self.extra = extra
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            status = try container.decode(Bool.self, forKey: .status)
            
            
            
            
            do {
                signupUrl = try container.decode(String.self, forKey: .signupUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                extra = try container.decode(String.self, forKey: .extra)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
            
            
            
            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
            
            
            
            try? container.encodeIfPresent(extra, forKey: .extra)
            
            
        }
        
    }
}
