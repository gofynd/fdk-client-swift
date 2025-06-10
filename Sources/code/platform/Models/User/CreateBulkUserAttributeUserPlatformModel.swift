

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateBulkUserAttribute
        Used By: User
    */

    class CreateBulkUserAttribute: Codable {
        
        
        public var attributes: [BulkUserAttributeRequestBody]
        

        public enum CodingKeys: String, CodingKey {
            
            case attributes = "attributes"
            
        }

        public init(attributes: [BulkUserAttributeRequestBody]) {
            
            self.attributes = attributes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                attributes = try container.decode([BulkUserAttributeRequestBody].self, forKey: .attributes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
        }
        
    }
}


