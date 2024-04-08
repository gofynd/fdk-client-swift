

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: InstallCourierPartnerItemsSchema
        Used By: Serviceability
    */

    class InstallCourierPartnerItemsSchema: Codable {
        
        
        public var baseUrl: String?
        
        public var callbacks: [String: Any]?
        
        public var contactEmail: String?
        
        public var createdAt: String?
        
        public var description: String?
        
        public var developedByName: String?
        
        public var extVersion: String?
        
        public var extensionType: String?
        
        public var isComingSoon: Bool?
        
        public var isHidden: Bool?
        
        public var isInstalled: Bool?
        
        public var launchType: String?
        
        public var logo: [String: Any]?
        
        public var modifiedAt: String?
        
        public var name: String?
        
        public var organizationId: String?
        
        public var partner: [String: Any]?
        
        public var scope: [String]?
        
        public var whitelistedUrls: [String]?
        
        public var v: Int?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case baseUrl = "base_url"
            
            case callbacks = "callbacks"
            
            case contactEmail = "contact_email"
            
            case createdAt = "created_at"
            
            case description = "description"
            
            case developedByName = "developed_by_name"
            
            case extVersion = "ext_version"
            
            case extensionType = "extension_type"
            
            case isComingSoon = "is_coming_soon"
            
            case isHidden = "is_hidden"
            
            case isInstalled = "is_installed"
            
            case launchType = "launch_type"
            
            case logo = "logo"
            
            case modifiedAt = "modified_at"
            
            case name = "name"
            
            case organizationId = "organization_id"
            
            case partner = "partner"
            
            case scope = "scope"
            
            case whitelistedUrls = "whitelisted_urls"
            
            case v = "__v"
            
            case id = "_id"
            
        }

        public init(baseUrl: String? = nil, callbacks: [String: Any]? = nil, contactEmail: String? = nil, createdAt: String? = nil, description: String? = nil, developedByName: String? = nil, extensionType: String? = nil, extVersion: String? = nil, isComingSoon: Bool? = nil, isHidden: Bool? = nil, isInstalled: Bool? = nil, launchType: String? = nil, logo: [String: Any]? = nil, modifiedAt: String? = nil, name: String? = nil, organizationId: String? = nil, partner: [String: Any]? = nil, scope: [String]? = nil, whitelistedUrls: [String]? = nil, id: String? = nil, v: Int? = nil) {
            
            self.baseUrl = baseUrl
            
            self.callbacks = callbacks
            
            self.contactEmail = contactEmail
            
            self.createdAt = createdAt
            
            self.description = description
            
            self.developedByName = developedByName
            
            self.extVersion = extVersion
            
            self.extensionType = extensionType
            
            self.isComingSoon = isComingSoon
            
            self.isHidden = isHidden
            
            self.isInstalled = isInstalled
            
            self.launchType = launchType
            
            self.logo = logo
            
            self.modifiedAt = modifiedAt
            
            self.name = name
            
            self.organizationId = organizationId
            
            self.partner = partner
            
            self.scope = scope
            
            self.whitelistedUrls = whitelistedUrls
            
            self.v = v
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    baseUrl = try container.decode(String.self, forKey: .baseUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callbacks = try container.decode([String: Any].self, forKey: .callbacks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactEmail = try container.decode(String.self, forKey: .contactEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    developedByName = try container.decode(String.self, forKey: .developedByName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extVersion = try container.decode(String.self, forKey: .extVersion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionType = try container.decode(String.self, forKey: .extensionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isComingSoon = try container.decode(Bool.self, forKey: .isComingSoon)
                
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
                    partner = try container.decode([String: Any].self, forKey: .partner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scope = try container.decode([String].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    whitelistedUrls = try container.decode([String].self, forKey: .whitelistedUrls)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
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
            
            
            
            try? container.encodeIfPresent(baseUrl, forKey: .baseUrl)
            
            
            
            
            try? container.encodeIfPresent(callbacks, forKey: .callbacks)
            
            
            
            
            try? container.encodeIfPresent(contactEmail, forKey: .contactEmail)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(developedByName, forKey: .developedByName)
            
            
            
            
            try? container.encodeIfPresent(extVersion, forKey: .extVersion)
            
            
            
            
            try? container.encodeIfPresent(extensionType, forKey: .extensionType)
            
            
            
            
            try? container.encodeIfPresent(isComingSoon, forKey: .isComingSoon)
            
            
            
            
            try? container.encodeIfPresent(isHidden, forKey: .isHidden)
            
            
            
            
            try? container.encodeIfPresent(isInstalled, forKey: .isInstalled)
            
            
            
            
            try? container.encodeIfPresent(launchType, forKey: .launchType)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(partner, forKey: .partner)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
            
            
            try? container.encodeIfPresent(whitelistedUrls, forKey: .whitelistedUrls)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
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
        
        
        public var baseUrl: String?
        
        public var callbacks: [String: Any]?
        
        public var contactEmail: String?
        
        public var createdAt: String?
        
        public var description: String?
        
        public var developedByName: String?
        
        public var extVersion: String?
        
        public var extensionType: String?
        
        public var isComingSoon: Bool?
        
        public var isHidden: Bool?
        
        public var isInstalled: Bool?
        
        public var launchType: String?
        
        public var logo: [String: Any]?
        
        public var modifiedAt: String?
        
        public var name: String?
        
        public var organizationId: String?
        
        public var partner: [String: Any]?
        
        public var scope: [String]?
        
        public var whitelistedUrls: [String]?
        
        public var v: Int?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case baseUrl = "base_url"
            
            case callbacks = "callbacks"
            
            case contactEmail = "contact_email"
            
            case createdAt = "created_at"
            
            case description = "description"
            
            case developedByName = "developed_by_name"
            
            case extVersion = "ext_version"
            
            case extensionType = "extension_type"
            
            case isComingSoon = "is_coming_soon"
            
            case isHidden = "is_hidden"
            
            case isInstalled = "is_installed"
            
            case launchType = "launch_type"
            
            case logo = "logo"
            
            case modifiedAt = "modified_at"
            
            case name = "name"
            
            case organizationId = "organization_id"
            
            case partner = "partner"
            
            case scope = "scope"
            
            case whitelistedUrls = "whitelisted_urls"
            
            case v = "__v"
            
            case id = "_id"
            
        }

        public init(baseUrl: String? = nil, callbacks: [String: Any]? = nil, contactEmail: String? = nil, createdAt: String? = nil, description: String? = nil, developedByName: String? = nil, extensionType: String? = nil, extVersion: String? = nil, isComingSoon: Bool? = nil, isHidden: Bool? = nil, isInstalled: Bool? = nil, launchType: String? = nil, logo: [String: Any]? = nil, modifiedAt: String? = nil, name: String? = nil, organizationId: String? = nil, partner: [String: Any]? = nil, scope: [String]? = nil, whitelistedUrls: [String]? = nil, id: String? = nil, v: Int? = nil) {
            
            self.baseUrl = baseUrl
            
            self.callbacks = callbacks
            
            self.contactEmail = contactEmail
            
            self.createdAt = createdAt
            
            self.description = description
            
            self.developedByName = developedByName
            
            self.extVersion = extVersion
            
            self.extensionType = extensionType
            
            self.isComingSoon = isComingSoon
            
            self.isHidden = isHidden
            
            self.isInstalled = isInstalled
            
            self.launchType = launchType
            
            self.logo = logo
            
            self.modifiedAt = modifiedAt
            
            self.name = name
            
            self.organizationId = organizationId
            
            self.partner = partner
            
            self.scope = scope
            
            self.whitelistedUrls = whitelistedUrls
            
            self.v = v
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    baseUrl = try container.decode(String.self, forKey: .baseUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callbacks = try container.decode([String: Any].self, forKey: .callbacks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactEmail = try container.decode(String.self, forKey: .contactEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    developedByName = try container.decode(String.self, forKey: .developedByName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extVersion = try container.decode(String.self, forKey: .extVersion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionType = try container.decode(String.self, forKey: .extensionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isComingSoon = try container.decode(Bool.self, forKey: .isComingSoon)
                
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
                    partner = try container.decode([String: Any].self, forKey: .partner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scope = try container.decode([String].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    whitelistedUrls = try container.decode([String].self, forKey: .whitelistedUrls)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
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
            
            
            
            try? container.encodeIfPresent(baseUrl, forKey: .baseUrl)
            
            
            
            
            try? container.encodeIfPresent(callbacks, forKey: .callbacks)
            
            
            
            
            try? container.encodeIfPresent(contactEmail, forKey: .contactEmail)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(developedByName, forKey: .developedByName)
            
            
            
            
            try? container.encodeIfPresent(extVersion, forKey: .extVersion)
            
            
            
            
            try? container.encodeIfPresent(extensionType, forKey: .extensionType)
            
            
            
            
            try? container.encodeIfPresent(isComingSoon, forKey: .isComingSoon)
            
            
            
            
            try? container.encodeIfPresent(isHidden, forKey: .isHidden)
            
            
            
            
            try? container.encodeIfPresent(isInstalled, forKey: .isInstalled)
            
            
            
            
            try? container.encodeIfPresent(launchType, forKey: .launchType)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(partner, forKey: .partner)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
            
            
            try? container.encodeIfPresent(whitelistedUrls, forKey: .whitelistedUrls)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


