

import Foundation


public extension PlatformClient.Partner {
    /*
        Model: ApplicationPermissions
        Used By: Partner
    */

    class ApplicationPermissions: Codable {
        
        
        public var permissions: [String]?
        
        public var roles: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case permissions = "permissions"
            
            case roles = "roles"
            
        }

        public init(permissions: [String]? = nil, roles: [String]? = nil) {
            
            self.permissions = permissions
            
            self.roles = roles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    permissions = try container.decode([String].self, forKey: .permissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    roles = try container.decode([String].self, forKey: .roles)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(permissions, forKey: .permissions)
            
            
            
            
            try? container.encodeIfPresent(roles, forKey: .roles)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Partner {
    /*
        Model: ApplicationPermissions
        Used By: Partner
    */

    class ApplicationPermissions: Codable {
        
        
        public var permissions: [String]?
        
        public var roles: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case permissions = "permissions"
            
            case roles = "roles"
            
        }

        public init(permissions: [String]? = nil, roles: [String]? = nil) {
            
            self.permissions = permissions
            
            self.roles = roles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    permissions = try container.decode([String].self, forKey: .permissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    roles = try container.decode([String].self, forKey: .roles)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(permissions, forKey: .permissions)
            
            
            
            
            try? container.encodeIfPresent(roles, forKey: .roles)
            
            
        }
        
    }
}


