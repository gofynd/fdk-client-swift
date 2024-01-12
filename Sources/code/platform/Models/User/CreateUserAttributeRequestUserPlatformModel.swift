

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateUserAttributeRequest
        Used By: User
    */

    class CreateUserAttributeRequest: Codable {
        
        
        public var customerOverriden: Bool?
        
        public var attribute: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customerOverriden = "customer_overriden"
            
            case attribute = "attribute"
            
        }

        public init(attribute: [String: Any]? = nil, customerOverriden: Bool? = nil) {
            
            self.customerOverriden = customerOverriden
            
            self.attribute = attribute
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customerOverriden, forKey: .customerOverriden)
            
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
        }
        
    }
}


