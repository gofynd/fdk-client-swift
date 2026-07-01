

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: DeleteBulkUserAttribute
        Used By: User
    */

    class DeleteBulkUserAttribute: Codable {
        
        
        public var definitionIds: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case definitionIds = "definition_ids"
            
        }

        public init(definitionIds: [String]? = nil) {
            
            self.definitionIds = definitionIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    definitionIds = try container.decode([String].self, forKey: .definitionIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(definitionIds, forKey: .definitionIds)
            
            
        }
        
    }
}


