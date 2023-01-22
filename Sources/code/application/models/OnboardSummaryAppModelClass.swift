

import Foundation
public extension ApplicationClient {
    /*
        Model: OnboardSummary
        Used By: Payment
    */
    class OnboardSummary: Codable {
        
        public var redirectUrl: String
        
        public var session: [String: Any]
        
        public var status: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case redirectUrl = "redirect_url"
            
            case session = "session"
            
            case status = "status"
            
        }

        public init(redirectUrl: String, session: [String: Any], status: Bool) {
            
            self.redirectUrl = redirectUrl
            
            self.session = session
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
            
            
            
            
            session = try container.decode([String: Any].self, forKey: .session)
            
            
            
            
            status = try container.decode(Bool.self, forKey: .status)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
            
            
            
            
            try? container.encodeIfPresent(session, forKey: .session)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}
