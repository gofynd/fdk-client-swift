

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoicePortalDetails
        Used By: Order
    */

    class EInvoicePortalDetails: Codable {
        
        
        public var username: String?
        
        public var user: String?
        
        public var password: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case user = "user"
            
            case password = "password"
            
        }

        public init(password: String? = nil, user: String? = nil, username: String? = nil) {
            
            self.username = username
            
            self.user = user
            
            self.password = password
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(String.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    password = try container.decode(String.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(username, forKey: .username)
            
            
            
            
            try? container.encode(user, forKey: .user)
            
            
            
            
            try? container.encode(password, forKey: .password)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoicePortalDetails
        Used By: Order
    */

    class EInvoicePortalDetails: Codable {
        
        
        public var username: String?
        
        public var user: String?
        
        public var password: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case user = "user"
            
            case password = "password"
            
        }

        public init(password: String? = nil, user: String? = nil, username: String? = nil) {
            
            self.username = username
            
            self.user = user
            
            self.password = password
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(String.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    password = try container.decode(String.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(username, forKey: .username)
            
            
            
            
            try? container.encode(user, forKey: .user)
            
            
            
            
            try? container.encode(password, forKey: .password)
            
            
        }
        
    }
}


