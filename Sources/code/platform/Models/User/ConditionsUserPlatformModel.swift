

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: Conditions
        Used By: User
    */

    class Conditions: Codable {
        
        
        public var userAttributeDefinitionId: String?
        
        public var type: String?
        
        public var value: [String: Any]?
        
        public var key: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case userAttributeDefinitionId = "user_attribute_definition_id"
            
            case type = "type"
            
            case value = "value"
            
            case key = "key"
            
        }

        public init(key: String? = nil, type: String? = nil, userAttributeDefinitionId: String? = nil, value: [String: Any]? = nil) {
            
            self.userAttributeDefinitionId = userAttributeDefinitionId
            
            self.type = type
            
            self.value = value
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userAttributeDefinitionId = try container.decode(String.self, forKey: .userAttributeDefinitionId)
                
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
                    value = try container.decode([String: Any].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userAttributeDefinitionId, forKey: .userAttributeDefinitionId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}


