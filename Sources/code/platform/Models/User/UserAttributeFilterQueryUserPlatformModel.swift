

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserAttributeFilterQuery
        Used By: User
    */

    class UserAttributeFilterQuery: Codable {
        
        
        public var type: String
        
        public var limit: Int
        
        public var page: Int
        
        public var email: String?
        
        public var phone: String?
        
        public var definitionIds: [String]?
        
        public var conditions: [UserAttributeFilterRequestConditions]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case limit = "limit"
            
            case page = "page"
            
            case email = "email"
            
            case phone = "phone"
            
            case definitionIds = "definition_ids"
            
            case conditions = "conditions"
            
        }

        public init(conditions: [UserAttributeFilterRequestConditions], definitionIds: [String]? = nil, email: String? = nil, limit: Int, page: Int, phone: String? = nil, type: String) {
            
            self.type = type
            
            self.limit = limit
            
            self.page = page
            
            self.email = email
            
            self.phone = phone
            
            self.definitionIds = definitionIds
            
            self.conditions = conditions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                limit = try container.decode(Int.self, forKey: .limit)
                
            
            
            
                page = try container.decode(Int.self, forKey: .page)
                
            
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definitionIds = try container.decode([String].self, forKey: .definitionIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                conditions = try container.decode([UserAttributeFilterRequestConditions].self, forKey: .conditions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(definitionIds, forKey: .definitionIds)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
        }
        
    }
}


