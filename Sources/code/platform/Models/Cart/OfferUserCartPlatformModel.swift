

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferUser
        Used By: Cart
    */

    class OfferUser: Codable {
        
        
        public var groups: [Int]?
        
        public var type: String?
        
        public var anonymous: Bool?
        
        public var id: [String]?
        
        public var registered: UserRegistered?
        
        public var emailDomain: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case groups = "groups"
            
            case type = "type"
            
            case anonymous = "anonymous"
            
            case id = "id"
            
            case registered = "registered"
            
            case emailDomain = "email_domain"
            
        }

        public init(anonymous: Bool? = nil, emailDomain: [String]? = nil, groups: [Int]? = nil, id: [String]? = nil, registered: UserRegistered? = nil, type: String? = nil) {
            
            self.groups = groups
            
            self.type = type
            
            self.anonymous = anonymous
            
            self.id = id
            
            self.registered = registered
            
            self.emailDomain = emailDomain
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    groups = try container.decode([Int].self, forKey: .groups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    anonymous = try container.decode(Bool.self, forKey: .anonymous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode([String].self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    registered = try container.decode(UserRegistered.self, forKey: .registered)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emailDomain = try container.decode([String].self, forKey: .emailDomain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(groups, forKey: .groups)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(registered, forKey: .registered)
            
            
            
            
            try? container.encodeIfPresent(emailDomain, forKey: .emailDomain)
            
            
        }
        
    }
}


