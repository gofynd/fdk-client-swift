

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PayoutUserDetails
        Used By: Payment
    */

    class PayoutUserDetails: Codable {
        
        
        public var uniqueExternalId: String?
        
        public var name: String?
        
        public var email: String?
        
        public var mobile: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueExternalId = "unique_external_id"
            
            case name = "name"
            
            case email = "email"
            
            case mobile = "mobile"
            
        }

        public init(email: String? = nil, mobile: String? = nil, name: String? = nil, uniqueExternalId: String? = nil) {
            
            self.uniqueExternalId = uniqueExternalId
            
            self.name = name
            
            self.email = email
            
            self.mobile = mobile
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PayoutUserDetails
        Used By: Payment
    */

    class PayoutUserDetails: Codable {
        
        
        public var uniqueExternalId: String?
        
        public var name: String?
        
        public var email: String?
        
        public var mobile: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueExternalId = "unique_external_id"
            
            case name = "name"
            
            case email = "email"
            
            case mobile = "mobile"
            
        }

        public init(email: String? = nil, mobile: String? = nil, name: String? = nil, uniqueExternalId: String? = nil) {
            
            self.uniqueExternalId = uniqueExternalId
            
            self.name = name
            
            self.email = email
            
            self.mobile = mobile
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
        }
        
    }
}


