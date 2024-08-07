

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: AuthorModifiedDetails
        Used By: Billing
    */

    class AuthorModifiedDetails: Codable {
        
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var isAdmin: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case isAdmin = "is_admin"
            
        }

        public init(firstName: String? = nil, isAdmin: Bool? = nil, lastName: String? = nil) {
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.isAdmin = isAdmin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isAdmin = try container.decode(Bool.self, forKey: .isAdmin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(isAdmin, forKey: .isAdmin)
            
            
        }
        
    }
}




