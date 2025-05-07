

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: Application
        Used By: Configuration
    */
    class Application: Codable {
        
        public var website: ApplicationWebsite?
        
        public var cors: ApplicationCors?
        
        public var auth: ApplicationAuth?
        
        public var description: String?
        
        public var channelType: String?
        
        public var cacheTtl: Int?
        
        public var isInternal: Bool?
        
        public var isSisEnabled: Bool?
        
        public var isActive: Bool?
        
        public var id: String?
        
        public var name: String?
        
        public var owner: String?
        
        public var companyId: Int?
        
        public var token: String?
        
        public var redirections: [ApplicationRedirections]?
        
        public var meta: [ApplicationMeta]?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Int?
        
        public var banner: SecureUrl?
        
        public var logo: SecureUrl?
        
        public var favicon: SecureUrl?
        
        public var domains: [Domain]?
        
        public var appType: String?
        
        public var mobileLogo: SecureUrl?
        
        public var domain: Domain?
        
        public var slug: String?
        
        public var mode: String?
        
        public var status: String?
        
        public var tokens: [TokenSchema]?
        
        public var companyCreatedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case website = "website"
            
            case cors = "cors"
            
            case auth = "auth"
            
            case description = "description"
            
            case channelType = "channel_type"
            
            case cacheTtl = "cache_ttl"
            
            case isInternal = "is_internal"
            
            case isSisEnabled = "is_sis_enabled"
            
            case isActive = "is_active"
            
            case id = "_id"
            
            case name = "name"
            
            case owner = "owner"
            
            case companyId = "company_id"
            
            case token = "token"
            
            case redirections = "redirections"
            
            case meta = "meta"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
            case banner = "banner"
            
            case logo = "logo"
            
            case favicon = "favicon"
            
            case domains = "domains"
            
            case appType = "app_type"
            
            case mobileLogo = "mobile_logo"
            
            case domain = "domain"
            
            case slug = "slug"
            
            case mode = "mode"
            
            case status = "status"
            
            case tokens = "tokens"
            
            case companyCreatedOn = "company_created_on"
            
        }

        public init(appType: String? = nil, auth: ApplicationAuth? = nil, banner: SecureUrl? = nil, cacheTtl: Int? = nil, channelType: String? = nil, companyCreatedOn: String? = nil, companyId: Int? = nil, cors: ApplicationCors? = nil, createdAt: String? = nil, description: String? = nil, domain: Domain? = nil, domains: [Domain]? = nil, favicon: SecureUrl? = nil, isActive: Bool? = nil, isInternal: Bool? = nil, isSisEnabled: Bool? = nil, logo: SecureUrl? = nil, meta: [ApplicationMeta]? = nil, mobileLogo: SecureUrl? = nil, mode: String? = nil, modifiedAt: String? = nil, name: String? = nil, owner: String? = nil, redirections: [ApplicationRedirections]? = nil, slug: String? = nil, status: String? = nil, token: String? = nil, tokens: [TokenSchema]? = nil, website: ApplicationWebsite? = nil, id: String? = nil, v: Int? = nil) {
            
            self.website = website
            
            self.cors = cors
            
            self.auth = auth
            
            self.description = description
            
            self.channelType = channelType
            
            self.cacheTtl = cacheTtl
            
            self.isInternal = isInternal
            
            self.isSisEnabled = isSisEnabled
            
            self.isActive = isActive
            
            self.id = id
            
            self.name = name
            
            self.owner = owner
            
            self.companyId = companyId
            
            self.token = token
            
            self.redirections = redirections
            
            self.meta = meta
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.v = v
            
            self.banner = banner
            
            self.logo = logo
            
            self.favicon = favicon
            
            self.domains = domains
            
            self.appType = appType
            
            self.mobileLogo = mobileLogo
            
            self.domain = domain
            
            self.slug = slug
            
            self.mode = mode
            
            self.status = status
            
            self.tokens = tokens
            
            self.companyCreatedOn = companyCreatedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                website = try container.decode(ApplicationWebsite.self, forKey: .website)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cors = try container.decode(ApplicationCors.self, forKey: .cors)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                auth = try container.decode(ApplicationAuth.self, forKey: .auth)
            
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
                channelType = try container.decode(String.self, forKey: .channelType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cacheTtl = try container.decode(Int.self, forKey: .cacheTtl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isInternal = try container.decode(Bool.self, forKey: .isInternal)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isSisEnabled = try container.decode(Bool.self, forKey: .isSisEnabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
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
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                owner = try container.decode(String.self, forKey: .owner)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                companyId = try container.decode(Int.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                token = try container.decode(String.self, forKey: .token)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                redirections = try container.decode([ApplicationRedirections].self, forKey: .redirections)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode([ApplicationMeta].self, forKey: .meta)
            
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
                modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
            
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
                banner = try container.decode(SecureUrl.self, forKey: .banner)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logo = try container.decode(SecureUrl.self, forKey: .logo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                favicon = try container.decode(SecureUrl.self, forKey: .favicon)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                domains = try container.decode([Domain].self, forKey: .domains)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                appType = try container.decode(String.self, forKey: .appType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mobileLogo = try container.decode(SecureUrl.self, forKey: .mobileLogo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                domain = try container.decode(Domain.self, forKey: .domain)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mode = try container.decode(String.self, forKey: .mode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tokens = try container.decode([TokenSchema].self, forKey: .tokens)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                companyCreatedOn = try container.decode(String.self, forKey: .companyCreatedOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(website, forKey: .website)
            
            
            
            try? container.encodeIfPresent(cors, forKey: .cors)
            
            
            
            try? container.encodeIfPresent(auth, forKey: .auth)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            try? container.encodeIfPresent(cacheTtl, forKey: .cacheTtl)
            
            
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            
            
            try? container.encodeIfPresent(isSisEnabled, forKey: .isSisEnabled)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(owner, forKey: .owner)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            try? container.encodeIfPresent(redirections, forKey: .redirections)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(favicon, forKey: .favicon)
            
            
            
            try? container.encodeIfPresent(domains, forKey: .domains)
            
            
            
            try? container.encodeIfPresent(appType, forKey: .appType)
            
            
            
            try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(tokens, forKey: .tokens)
            
            
            
            try? container.encodeIfPresent(companyCreatedOn, forKey: .companyCreatedOn)
            
            
        }
        
    }
}
