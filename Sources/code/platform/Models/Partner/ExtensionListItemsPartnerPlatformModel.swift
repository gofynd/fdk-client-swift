

import Foundation


public extension PlatformClient.Partner {
    /*
        Model: ExtensionListItems
        Used By: Partner
    */

    class ExtensionListItems: Codable {
        
        
        public var baseUrl: String?
        
        public var callbacks: Callback?
        
        public var contactEmail: String?
        
        public var currentStatus: String?
        
        public var description: String?
        
        public var developedByName: String?
        
        public var extVersion: String?
        
        public var extentionType: String?
        
        public var isApplicationLevel: Bool?
        
        public var isComingSoon: Bool?
        
        public var isSaleschannel: Bool?
        
        public var logo: Logo?
        
        public var name: String?
        
        public var scope: [String]?
        
        public var createdAt: String?
        
        public var isHidden: Bool?
        
        public var modifiedAt: String?
        
        public var organizationId: String?
        
        public var whitelistedUrls: [String]?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case baseUrl = "base_url"
            
            case callbacks = "callbacks"
            
            case contactEmail = "contact_email"
            
            case currentStatus = "current_status"
            
            case description = "description"
            
            case developedByName = "developed_by_name"
            
            case extVersion = "ext_version"
            
            case extentionType = "extention_type"
            
            case isApplicationLevel = "is_application_level"
            
            case isComingSoon = "is_coming_soon"
            
            case isSaleschannel = "is_saleschannel"
            
            case logo = "logo"
            
            case name = "name"
            
            case scope = "scope"
            
            case createdAt = "created_at"
            
            case isHidden = "is_hidden"
            
            case modifiedAt = "modified_at"
            
            case organizationId = "organization_id"
            
            case whitelistedUrls = "whitelisted_urls"
            
            case id = "_id"
            
        }

        public init(baseUrl: String? = nil, callbacks: Callback? = nil, contactEmail: String? = nil, createdAt: String? = nil, currentStatus: String? = nil, description: String? = nil, developedByName: String? = nil, extentionType: String? = nil, extVersion: String? = nil, isApplicationLevel: Bool? = nil, isComingSoon: Bool? = nil, isHidden: Bool? = nil, isSaleschannel: Bool? = nil, logo: Logo? = nil, modifiedAt: String? = nil, name: String? = nil, organizationId: String? = nil, scope: [String]? = nil, whitelistedUrls: [String]? = nil, id: String? = nil) {
            
            self.baseUrl = baseUrl
            
            self.callbacks = callbacks
            
            self.contactEmail = contactEmail
            
            self.currentStatus = currentStatus
            
            self.description = description
            
            self.developedByName = developedByName
            
            self.extVersion = extVersion
            
            self.extentionType = extentionType
            
            self.isApplicationLevel = isApplicationLevel
            
            self.isComingSoon = isComingSoon
            
            self.isSaleschannel = isSaleschannel
            
            self.logo = logo
            
            self.name = name
            
            self.scope = scope
            
            self.createdAt = createdAt
            
            self.isHidden = isHidden
            
            self.modifiedAt = modifiedAt
            
            self.organizationId = organizationId
            
            self.whitelistedUrls = whitelistedUrls
            
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
                    callbacks = try container.decode(Callback.self, forKey: .callbacks)
                
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
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
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
                    extentionType = try container.decode(String.self, forKey: .extentionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isApplicationLevel = try container.decode(Bool.self, forKey: .isApplicationLevel)
                
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
                    isSaleschannel = try container.decode(Bool.self, forKey: .isSaleschannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(Logo.self, forKey: .logo)
                
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
                    scope = try container.decode([String].self, forKey: .scope)
                
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
                    isHidden = try container.decode(Bool.self, forKey: .isHidden)
                
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
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
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
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(developedByName, forKey: .developedByName)
            
            
            
            
            try? container.encodeIfPresent(extVersion, forKey: .extVersion)
            
            
            
            
            try? container.encodeIfPresent(extentionType, forKey: .extentionType)
            
            
            
            
            try? container.encodeIfPresent(isApplicationLevel, forKey: .isApplicationLevel)
            
            
            
            
            try? container.encodeIfPresent(isComingSoon, forKey: .isComingSoon)
            
            
            
            
            try? container.encodeIfPresent(isSaleschannel, forKey: .isSaleschannel)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(isHidden, forKey: .isHidden)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(whitelistedUrls, forKey: .whitelistedUrls)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Partner {
    /*
        Model: ExtensionListItems
        Used By: Partner
    */

    class ExtensionListItems: Codable {
        
        
        public var baseUrl: String?
        
        public var callbacks: Callback?
        
        public var contactEmail: String?
        
        public var currentStatus: String?
        
        public var description: String?
        
        public var developedByName: String?
        
        public var extVersion: String?
        
        public var extentionType: String?
        
        public var isApplicationLevel: Bool?
        
        public var isComingSoon: Bool?
        
        public var isSaleschannel: Bool?
        
        public var logo: Logo?
        
        public var name: String?
        
        public var scope: [String]?
        
        public var createdAt: String?
        
        public var isHidden: Bool?
        
        public var modifiedAt: String?
        
        public var organizationId: String?
        
        public var whitelistedUrls: [String]?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case baseUrl = "base_url"
            
            case callbacks = "callbacks"
            
            case contactEmail = "contact_email"
            
            case currentStatus = "current_status"
            
            case description = "description"
            
            case developedByName = "developed_by_name"
            
            case extVersion = "ext_version"
            
            case extentionType = "extention_type"
            
            case isApplicationLevel = "is_application_level"
            
            case isComingSoon = "is_coming_soon"
            
            case isSaleschannel = "is_saleschannel"
            
            case logo = "logo"
            
            case name = "name"
            
            case scope = "scope"
            
            case createdAt = "created_at"
            
            case isHidden = "is_hidden"
            
            case modifiedAt = "modified_at"
            
            case organizationId = "organization_id"
            
            case whitelistedUrls = "whitelisted_urls"
            
            case id = "_id"
            
        }

        public init(baseUrl: String? = nil, callbacks: Callback? = nil, contactEmail: String? = nil, createdAt: String? = nil, currentStatus: String? = nil, description: String? = nil, developedByName: String? = nil, extentionType: String? = nil, extVersion: String? = nil, isApplicationLevel: Bool? = nil, isComingSoon: Bool? = nil, isHidden: Bool? = nil, isSaleschannel: Bool? = nil, logo: Logo? = nil, modifiedAt: String? = nil, name: String? = nil, organizationId: String? = nil, scope: [String]? = nil, whitelistedUrls: [String]? = nil, id: String? = nil) {
            
            self.baseUrl = baseUrl
            
            self.callbacks = callbacks
            
            self.contactEmail = contactEmail
            
            self.currentStatus = currentStatus
            
            self.description = description
            
            self.developedByName = developedByName
            
            self.extVersion = extVersion
            
            self.extentionType = extentionType
            
            self.isApplicationLevel = isApplicationLevel
            
            self.isComingSoon = isComingSoon
            
            self.isSaleschannel = isSaleschannel
            
            self.logo = logo
            
            self.name = name
            
            self.scope = scope
            
            self.createdAt = createdAt
            
            self.isHidden = isHidden
            
            self.modifiedAt = modifiedAt
            
            self.organizationId = organizationId
            
            self.whitelistedUrls = whitelistedUrls
            
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
                    callbacks = try container.decode(Callback.self, forKey: .callbacks)
                
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
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
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
                    extentionType = try container.decode(String.self, forKey: .extentionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isApplicationLevel = try container.decode(Bool.self, forKey: .isApplicationLevel)
                
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
                    isSaleschannel = try container.decode(Bool.self, forKey: .isSaleschannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(Logo.self, forKey: .logo)
                
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
                    scope = try container.decode([String].self, forKey: .scope)
                
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
                    isHidden = try container.decode(Bool.self, forKey: .isHidden)
                
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
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
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
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(developedByName, forKey: .developedByName)
            
            
            
            
            try? container.encodeIfPresent(extVersion, forKey: .extVersion)
            
            
            
            
            try? container.encodeIfPresent(extentionType, forKey: .extentionType)
            
            
            
            
            try? container.encodeIfPresent(isApplicationLevel, forKey: .isApplicationLevel)
            
            
            
            
            try? container.encodeIfPresent(isComingSoon, forKey: .isComingSoon)
            
            
            
            
            try? container.encodeIfPresent(isSaleschannel, forKey: .isSaleschannel)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(isHidden, forKey: .isHidden)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(whitelistedUrls, forKey: .whitelistedUrls)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


