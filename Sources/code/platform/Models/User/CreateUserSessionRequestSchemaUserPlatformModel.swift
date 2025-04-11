

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateUserSessionRequestSchema
        Used By: User
    */

    class CreateUserSessionRequestSchema: Codable {
        
        
        public var domain: String
        
        public var userId: String
        
        public var maxAge: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case domain = "domain"
            
            case userId = "user_id"
            
            case maxAge = "max_age"
            
        }

        public init(domain: String, maxAge: Double? = nil, userId: String) {
            
            self.domain = domain
            
            self.userId = userId
            
            self.maxAge = maxAge
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                domain = try container.decode(String.self, forKey: .domain)
                
            
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
            
                do {
                    maxAge = try container.decode(Double.self, forKey: .maxAge)
                
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
            
            
            
            
            try? container.encodeIfPresent(maxAge, forKey: .maxAge)
            
            
        }
        
    }
}


