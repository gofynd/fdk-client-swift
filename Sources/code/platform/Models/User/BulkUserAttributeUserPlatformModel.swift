

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkUserAttribute
        Used By: User
    */

    class BulkUserAttribute: Codable {
        
        
        public var success: Bool?
        
        public var attributes: [UserAttribute]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case attributes = "attributes"
            
        }

        public init(attributes: [UserAttribute]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.attributes = attributes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([UserAttribute].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
        }
        
    }
}


