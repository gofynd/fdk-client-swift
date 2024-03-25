

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateUserSessionRequestSchema
        Used By: User
    */

    class CreateUserSessionRequestSchema: Codable {
        
        
        public var domain: String
        
        public var maxAge: Double?
        
        public var userId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case domain = "domain"
            
            case maxAge = "max_age"
            
            case userId = "user_id"
            
        }

        public init(domain: String, maxAge: Double? = nil, userId: String) {
            
            self.domain = domain
            
            self.maxAge = maxAge
            
            self.userId = userId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                domain = try container.decode(String.self, forKey: .domain)
                
            
            
            
                do {
                    maxAge = try container.decode(Double.self, forKey: .maxAge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            
            try? container.encodeIfPresent(maxAge, forKey: .maxAge)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
        }
        
    }
}


