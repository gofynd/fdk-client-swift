

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserAttribute
        Used By: User
    */

    class UserAttribute: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var userId: String?
        
        public var applicationId: String?
        
        public var type: String?
        
        public var customerOverriden: Bool?
        
        public var attribute: [String: Any]?
        
        public var updatedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case userId = "user_id"
            
            case applicationId = "application_id"
            
            case type = "type"
            
            case customerOverriden = "customer_overriden"
            
            case attribute = "attribute"
            
            case updatedBy = "updated_by"
            
        }

        public init(applicationId: String? = nil, attribute: [String: Any]? = nil, customerOverriden: Bool? = nil, name: String? = nil, type: String? = nil, updatedBy: String? = nil, userId: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.userId = userId
            
            self.applicationId = applicationId
            
            self.type = type
            
            self.customerOverriden = customerOverriden
            
            self.attribute = attribute
            
            self.updatedBy = updatedBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
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
                    customerOverriden = try container.decode(Bool.self, forKey: .customerOverriden)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attribute = try container.decode([String: Any].self, forKey: .attribute)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(customerOverriden, forKey: .customerOverriden)
            
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
        }
        
    }
}


