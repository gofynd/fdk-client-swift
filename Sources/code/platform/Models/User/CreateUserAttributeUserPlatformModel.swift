

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateUserAttribute
        Used By: User
    */

    class CreateUserAttribute: Codable {
        
        
        public var customerOverridden: Bool?
        
        public var attribute: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customerOverridden = "customer_overridden"
            
            case attribute = "attribute"
            
        }

        public init(attribute: [String: Any]? = nil, customerOverridden: Bool? = nil) {
            
            self.customerOverridden = customerOverridden
            
            self.attribute = attribute
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customerOverridden = try container.decode(Bool.self, forKey: .customerOverridden)
                
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
            
            
            
            try? container.encodeIfPresent(customerOverridden, forKey: .customerOverridden)
            
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
        }
        
    }
}


