

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserAttributeFilterRequestConditions
        Used By: User
    */

    class UserAttributeFilterRequestConditions: Codable {
        
        
        public var definitionId: String
        
        public var type: String
        
        public var value: [String: Any]
        
        public var ignoreYear: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case definitionId = "definition_id"
            
            case type = "type"
            
            case value = "value"
            
            case ignoreYear = "ignore_year"
            
        }

        public init(definitionId: String, ignoreYear: Bool? = nil, type: String, value: [String: Any]) {
            
            self.definitionId = definitionId
            
            self.type = type
            
            self.value = value
            
            self.ignoreYear = ignoreYear
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                definitionId = try container.decode(String.self, forKey: .definitionId)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                value = try container.decode([String: Any].self, forKey: .value)
                
            
            
            
                do {
                    ignoreYear = try container.decode(Bool.self, forKey: .ignoreYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(ignoreYear, forKey: .ignoreYear)
            
            
        }
        
    }
}


