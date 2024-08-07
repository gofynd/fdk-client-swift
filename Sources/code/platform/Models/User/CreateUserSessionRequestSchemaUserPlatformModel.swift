

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateUserSessionRequestSchema
        Used By: User
    */

    class CreateUserSessionRequestSchema: Codable {
        
        
        public var domain: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case domain = "domain"
            
            case userId = "user_id"
            
        }

        public init(domain: String? = nil, userId: String? = nil) {
            
            self.domain = domain
            
            self.userId = userId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    domain = try container.decode(String.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
        }
        
    }
}


