

import Foundation
public extension PublicClient.Content {
    /*
        Model: SellerSupport
        Used By: Content
    */

    class SellerSupport: Codable {
        
        
        public var email: String?
        
        public var phoneNumber: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case phoneNumber = "phone_number"
            
        }

        public init(email: String? = nil, phoneNumber: Int? = nil) {
            
            self.email = email
            
            self.phoneNumber = phoneNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
        }
        
    }
}
