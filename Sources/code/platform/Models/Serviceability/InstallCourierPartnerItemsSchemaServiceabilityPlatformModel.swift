

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: InstallCourierPartnerItemsSchema
        Used By: Serviceability
    */

    class InstallCourierPartnerItemsSchema: Codable {
        
        
        public var description: String?
        
        public var extentionType: String?
        
        public var isHidden: Bool?
        
        public var isInstalled: Bool?
        
        public var launchType: String?
        
        public var logo: [String: Any]?
        
        public var modifiedAt: String?
        
        public var name: String?
        
        public var organizationId: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case extentionType = "extention_type"
            
            case isHidden = "is_hidden"
            
            case isInstalled = "is_installed"
            
            case launchType = "launch_type"
            
            case logo = "logo"
            
            case modifiedAt = "modified_at"
            
            case name = "name"
            
            case organizationId = "organization_id"
            
            case id = "_id"
            
        }

        public init(description: String? = nil, extentionType: String? = nil, isHidden: Bool? = nil, isInstalled: Bool? = nil, launchType: String? = nil, logo: [String: Any]? = nil, modifiedAt: String? = nil, name: String? = nil, organizationId: String? = nil, id: String? = nil) {
            
            self.description = description
            
            self.extentionType = extentionType
            
            self.isHidden = isHidden
            
            self.isInstalled = isInstalled
            
            self.launchType = launchType
            
            self.logo = logo
            
            self.modifiedAt = modifiedAt
            
            self.name = name
            
            self.organizationId = organizationId
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extentionType = try container.decode(String.self, forKey: .extentionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isHidden = try container.decode(Bool.self, forKey: .isHidden)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInstalled = try container.decode(Bool.self, forKey: .isInstalled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    launchType = try container.decode(String.self, forKey: .launchType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode([String: Any].self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
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
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(extentionType, forKey: .extentionType)
            
            
            
            
            try? container.encodeIfPresent(isHidden, forKey: .isHidden)
            
            
            
            
            try? container.encodeIfPresent(isInstalled, forKey: .isInstalled)
            
            
            
            
            try? container.encodeIfPresent(launchType, forKey: .launchType)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: InstallCourierPartnerItemsSchema
        Used By: Serviceability
    */

    class InstallCourierPartnerItemsSchema: Codable {
        
        
        public var description: String?
        
        public var extentionType: String?
        
        public var isHidden: Bool?
        
        public var isInstalled: Bool?
        
        public var launchType: String?
        
        public var logo: [String: Any]?
        
        public var modifiedAt: String?
        
        public var name: String?
        
        public var organizationId: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case extentionType = "extention_type"
            
            case isHidden = "is_hidden"
            
            case isInstalled = "is_installed"
            
            case launchType = "launch_type"
            
            case logo = "logo"
            
            case modifiedAt = "modified_at"
            
            case name = "name"
            
            case organizationId = "organization_id"
            
            case id = "_id"
            
        }

        public init(description: String? = nil, extentionType: String? = nil, isHidden: Bool? = nil, isInstalled: Bool? = nil, launchType: String? = nil, logo: [String: Any]? = nil, modifiedAt: String? = nil, name: String? = nil, organizationId: String? = nil, id: String? = nil) {
            
            self.description = description
            
            self.extentionType = extentionType
            
            self.isHidden = isHidden
            
            self.isInstalled = isInstalled
            
            self.launchType = launchType
            
            self.logo = logo
            
            self.modifiedAt = modifiedAt
            
            self.name = name
            
            self.organizationId = organizationId
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extentionType = try container.decode(String.self, forKey: .extentionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isHidden = try container.decode(Bool.self, forKey: .isHidden)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInstalled = try container.decode(Bool.self, forKey: .isInstalled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    launchType = try container.decode(String.self, forKey: .launchType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode([String: Any].self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
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
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(extentionType, forKey: .extentionType)
            
            
            
            
            try? container.encodeIfPresent(isHidden, forKey: .isHidden)
            
            
            
            
            try? container.encodeIfPresent(isInstalled, forKey: .isInstalled)
            
            
            
            
            try? container.encodeIfPresent(launchType, forKey: .launchType)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


