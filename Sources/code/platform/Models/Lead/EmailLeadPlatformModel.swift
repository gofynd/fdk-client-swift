

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: Email
        Used By: Lead
    */

    class Email: Codable {
        
        
        public var email: String?
        
        public var active: Bool?
        
        public var primary: Bool?
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case active = "active"
            
            case primary = "primary"
            
            case verified = "verified"
            
        }

        public init(active: Bool? = nil, email: String? = nil, primary: Bool? = nil, verified: Bool? = nil) {
            
            self.email = email
            
            self.active = active
            
            self.primary = primary
            
            self.verified = verified
            
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
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primary = try container.decode(Bool.self, forKey: .primary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: Email
        Used By: Lead
    */

    class Email: Codable {
        
        
        public var email: String?
        
        public var active: Bool?
        
        public var primary: Bool?
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case active = "active"
            
            case primary = "primary"
            
            case verified = "verified"
            
        }

        public init(active: Bool? = nil, email: String? = nil, primary: Bool? = nil, verified: Bool? = nil) {
            
            self.email = email
            
            self.active = active
            
            self.primary = primary
            
            self.verified = verified
            
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
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primary = try container.decode(Bool.self, forKey: .primary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
        }
        
    }
}


