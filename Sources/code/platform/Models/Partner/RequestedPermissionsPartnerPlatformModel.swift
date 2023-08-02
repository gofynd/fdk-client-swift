

import Foundation


public extension PlatformClient.Partner {
    /*
        Model: RequestedPermissions
        Used By: Partner
    */

    class RequestedPermissions: Codable {
        
        
        public var applicationPermissions: [String]?
        
        public var applicationRole: [String]?
        
        public var companyPermissions: [String]?
        
        public var companyRole: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationPermissions = "application_permissions"
            
            case applicationRole = "application_role"
            
            case companyPermissions = "company_permissions"
            
            case companyRole = "company_role"
            
        }

        public init(applicationPermissions: [String]? = nil, applicationRole: [String]? = nil, companyPermissions: [String]? = nil, companyRole: [String]? = nil) {
            
            self.applicationPermissions = applicationPermissions
            
            self.applicationRole = applicationRole
            
            self.companyPermissions = companyPermissions
            
            self.companyRole = companyRole
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applicationPermissions = try container.decode([String].self, forKey: .applicationPermissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationRole = try container.decode([String].self, forKey: .applicationRole)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyPermissions = try container.decode([String].self, forKey: .companyPermissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyRole = try container.decode([String].self, forKey: .companyRole)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationPermissions, forKey: .applicationPermissions)
            
            
            
            
            try? container.encodeIfPresent(applicationRole, forKey: .applicationRole)
            
            
            
            
            try? container.encodeIfPresent(companyPermissions, forKey: .companyPermissions)
            
            
            
            
            try? container.encodeIfPresent(companyRole, forKey: .companyRole)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Partner {
    /*
        Model: RequestedPermissions
        Used By: Partner
    */

    class RequestedPermissions: Codable {
        
        
        public var applicationPermissions: [String]?
        
        public var applicationRole: [String]?
        
        public var companyPermissions: [String]?
        
        public var companyRole: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationPermissions = "application_permissions"
            
            case applicationRole = "application_role"
            
            case companyPermissions = "company_permissions"
            
            case companyRole = "company_role"
            
        }

        public init(applicationPermissions: [String]? = nil, applicationRole: [String]? = nil, companyPermissions: [String]? = nil, companyRole: [String]? = nil) {
            
            self.applicationPermissions = applicationPermissions
            
            self.applicationRole = applicationRole
            
            self.companyPermissions = companyPermissions
            
            self.companyRole = companyRole
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applicationPermissions = try container.decode([String].self, forKey: .applicationPermissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationRole = try container.decode([String].self, forKey: .applicationRole)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyPermissions = try container.decode([String].self, forKey: .companyPermissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyRole = try container.decode([String].self, forKey: .companyRole)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationPermissions, forKey: .applicationPermissions)
            
            
            
            
            try? container.encodeIfPresent(applicationRole, forKey: .applicationRole)
            
            
            
            
            try? container.encodeIfPresent(companyPermissions, forKey: .companyPermissions)
            
            
            
            
            try? container.encodeIfPresent(companyRole, forKey: .companyRole)
            
            
        }
        
    }
}


