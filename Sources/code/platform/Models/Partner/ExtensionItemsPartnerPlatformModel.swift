

import Foundation


public extension PlatformClient.Partner {
    /*
        Model: ExtensionItems
        Used By: Partner
    */

    class ExtensionItems: Codable {
        
        
        public var baseUrl: String?
        
        public var company: String?
        
        public var description: String?
        
        public var developedByName: String?
        
        public var extVersion: String?
        
        public var extensionId: String?
        
        public var extentionType: String?
        
        public var installed: Bool?
        
        public var isSaleschannel: Bool?
        
        public var launchUrl: String?
        
        public var name: String?
        
        public var logo: Logo?
        
        public var scope: [Scope]?
        

        public enum CodingKeys: String, CodingKey {
            
            case baseUrl = "base_url"
            
            case company = "company"
            
            case description = "description"
            
            case developedByName = "developed_by_name"
            
            case extVersion = "ext_version"
            
            case extensionId = "extension_id"
            
            case extentionType = "extention_type"
            
            case installed = "installed"
            
            case isSaleschannel = "is_saleschannel"
            
            case launchUrl = "launch_url"
            
            case name = "name"
            
            case logo = "logo"
            
            case scope = "scope"
            
        }

        public init(baseUrl: String? = nil, company: String? = nil, description: String? = nil, developedByName: String? = nil, extensionId: String? = nil, extentionType: String? = nil, extVersion: String? = nil, installed: Bool? = nil, isSaleschannel: Bool? = nil, launchUrl: String? = nil, logo: Logo? = nil, name: String? = nil, scope: [Scope]? = nil) {
            
            self.baseUrl = baseUrl
            
            self.company = company
            
            self.description = description
            
            self.developedByName = developedByName
            
            self.extVersion = extVersion
            
            self.extensionId = extensionId
            
            self.extentionType = extentionType
            
            self.installed = installed
            
            self.isSaleschannel = isSaleschannel
            
            self.launchUrl = launchUrl
            
            self.name = name
            
            self.logo = logo
            
            self.scope = scope
            
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
                    company = try container.decode(String.self, forKey: .company)
                
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
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
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
                    installed = try container.decode(Bool.self, forKey: .installed)
                
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
                    launchUrl = try container.decode(String.self, forKey: .launchUrl)
                
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
                    logo = try container.decode(Logo.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scope = try container.decode([Scope].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(baseUrl, forKey: .baseUrl)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(developedByName, forKey: .developedByName)
            
            
            
            
            try? container.encodeIfPresent(extVersion, forKey: .extVersion)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(extentionType, forKey: .extentionType)
            
            
            
            
            try? container.encodeIfPresent(installed, forKey: .installed)
            
            
            
            
            try? container.encodeIfPresent(isSaleschannel, forKey: .isSaleschannel)
            
            
            
            
            try? container.encodeIfPresent(launchUrl, forKey: .launchUrl)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Partner {
    /*
        Model: ExtensionItems
        Used By: Partner
    */

    class ExtensionItems: Codable {
        
        
        public var baseUrl: String?
        
        public var company: String?
        
        public var description: String?
        
        public var developedByName: String?
        
        public var extVersion: String?
        
        public var extensionId: String?
        
        public var extentionType: String?
        
        public var installed: Bool?
        
        public var isSaleschannel: Bool?
        
        public var launchUrl: String?
        
        public var name: String?
        
        public var logo: Logo?
        
        public var scope: [Scope]?
        

        public enum CodingKeys: String, CodingKey {
            
            case baseUrl = "base_url"
            
            case company = "company"
            
            case description = "description"
            
            case developedByName = "developed_by_name"
            
            case extVersion = "ext_version"
            
            case extensionId = "extension_id"
            
            case extentionType = "extention_type"
            
            case installed = "installed"
            
            case isSaleschannel = "is_saleschannel"
            
            case launchUrl = "launch_url"
            
            case name = "name"
            
            case logo = "logo"
            
            case scope = "scope"
            
        }

        public init(baseUrl: String? = nil, company: String? = nil, description: String? = nil, developedByName: String? = nil, extensionId: String? = nil, extentionType: String? = nil, extVersion: String? = nil, installed: Bool? = nil, isSaleschannel: Bool? = nil, launchUrl: String? = nil, logo: Logo? = nil, name: String? = nil, scope: [Scope]? = nil) {
            
            self.baseUrl = baseUrl
            
            self.company = company
            
            self.description = description
            
            self.developedByName = developedByName
            
            self.extVersion = extVersion
            
            self.extensionId = extensionId
            
            self.extentionType = extentionType
            
            self.installed = installed
            
            self.isSaleschannel = isSaleschannel
            
            self.launchUrl = launchUrl
            
            self.name = name
            
            self.logo = logo
            
            self.scope = scope
            
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
                    company = try container.decode(String.self, forKey: .company)
                
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
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
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
                    installed = try container.decode(Bool.self, forKey: .installed)
                
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
                    launchUrl = try container.decode(String.self, forKey: .launchUrl)
                
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
                    logo = try container.decode(Logo.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scope = try container.decode([Scope].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(baseUrl, forKey: .baseUrl)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(developedByName, forKey: .developedByName)
            
            
            
            
            try? container.encodeIfPresent(extVersion, forKey: .extVersion)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(extentionType, forKey: .extentionType)
            
            
            
            
            try? container.encodeIfPresent(installed, forKey: .installed)
            
            
            
            
            try? container.encodeIfPresent(isSaleschannel, forKey: .isSaleschannel)
            
            
            
            
            try? container.encodeIfPresent(launchUrl, forKey: .launchUrl)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
        }
        
    }
}


