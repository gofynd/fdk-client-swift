

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkUserAttributeRequestBody
        Used By: User
    */

    class BulkUserAttributeRequestBody: Codable {
        
        
        public var definitionId: String
        
        public var value: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case definitionId = "definition_id"
            
            case value = "value"
            
        }

        public init(definitionId: String, value: [String: Any]) {
            
            self.definitionId = definitionId
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                definitionId = try container.decode(String.self, forKey: .definitionId)
                
            
            
            
                value = try container.decode([String: Any].self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


