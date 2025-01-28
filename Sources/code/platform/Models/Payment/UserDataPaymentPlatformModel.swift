

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: UserData
        Used By: Payment
    */

    class UserData: Codable {
        
        
        public var userPhone: String?
        
        public var userEmail: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case userPhone = "user_phone"
            
            case userEmail = "user_email"
            
        }

        public init(userEmail: String? = nil, userPhone: String? = nil) {
            
            self.userPhone = userPhone
            
            self.userEmail = userEmail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userPhone = try container.decode(String.self, forKey: .userPhone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userEmail = try container.decode(String.self, forKey: .userEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userPhone, forKey: .userPhone)
            
            
            
            
            try? container.encodeIfPresent(userEmail, forKey: .userEmail)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: UserData
        Used By: Payment
    */

    class UserData: Codable {
        
        
        public var userPhone: String?
        
        public var userEmail: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case userPhone = "user_phone"
            
            case userEmail = "user_email"
            
        }

        public init(userEmail: String? = nil, userPhone: String? = nil) {
            
            self.userPhone = userPhone
            
            self.userEmail = userEmail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userPhone = try container.decode(String.self, forKey: .userPhone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userEmail = try container.decode(String.self, forKey: .userEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userPhone, forKey: .userPhone)
            
            
            
            
            try? container.encodeIfPresent(userEmail, forKey: .userEmail)
            
            
        }
        
    }
}


