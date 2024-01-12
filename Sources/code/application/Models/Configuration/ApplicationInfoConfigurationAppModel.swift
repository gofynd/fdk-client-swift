

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: ApplicationInfo
        Used By: Configuration
    */
    class ApplicationInfo: Codable {
        
        public var companyInfo: CompanyInfo?
        
        public var ownerInfo: OwnerInfo?
        
        public var id: String?
        
        public var domain: Domain?
        
        public var website: ApplicationWebsite?
        
        public var cors: ApplicationCors?
        
        public var description: String?
        
        public var name: String?
        
        public var meta: [ApplicationMeta]?
        
        public var token: String?
        
        public var secret: String?
        
        public var createdAt: String?
        
        public var banner: SecureUrl?
        
        public var logo: SecureUrl?
        
        public var isActive: Bool?
        
        public var mode: String?
        
        public var tokens: [TokenSchema]?
        
        public var domains: [Domain]?
        
        public var favicon: SecureUrl?
        
        public var mobileLogo: SecureUrl?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyInfo = "company_info"
            
            case ownerInfo = "owner_info"
            
            case id = "_id"
            
            case domain = "domain"
            
            case website = "website"
            
            case cors = "cors"
            
            case description = "description"
            
            case name = "name"
            
            case meta = "meta"
            
            case token = "token"
            
            case secret = "secret"
            
            case createdAt = "created_at"
            
            case banner = "banner"
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case mode = "mode"
            
            case tokens = "tokens"
            
            case domains = "domains"
            
            case favicon = "favicon"
            
            case mobileLogo = "mobile_logo"
            
            case slug = "slug"
            
        }

        public init(banner: SecureUrl? = nil, companyInfo: CompanyInfo? = nil, cors: ApplicationCors? = nil, createdAt: String? = nil, description: String? = nil, domain: Domain? = nil, domains: [Domain]? = nil, favicon: SecureUrl? = nil, isActive: Bool? = nil, logo: SecureUrl? = nil, meta: [ApplicationMeta]? = nil, mobileLogo: SecureUrl? = nil, mode: String? = nil, name: String? = nil, ownerInfo: OwnerInfo? = nil, secret: String? = nil, slug: String? = nil, token: String? = nil, tokens: [TokenSchema]? = nil, website: ApplicationWebsite? = nil, id: String? = nil) {
            
            self.companyInfo = companyInfo
            
            self.ownerInfo = ownerInfo
            
            self.id = id
            
            self.domain = domain
            
            self.website = website
            
            self.cors = cors
            
            self.description = description
            
            self.name = name
            
            self.meta = meta
            
            self.token = token
            
            self.secret = secret
            
            self.createdAt = createdAt
            
            self.banner = banner
            
            self.logo = logo
            
            self.isActive = isActive
            
            self.mode = mode
            
            self.tokens = tokens
            
            self.domains = domains
            
            self.favicon = favicon
            
            self.mobileLogo = mobileLogo
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                companyInfo = try container.decode(CompanyInfo.self, forKey: .companyInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ownerInfo = try container.decode(OwnerInfo.self, forKey: .ownerInfo)
            
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
                domain = try container.decode(Domain.self, forKey: .domain)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
                description = try container.decode(String.self, forKey: .description)
            
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
                meta = try container.decode([ApplicationMeta].self, forKey: .meta)
            
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
                secret = try container.decode(String.self, forKey: .secret)
            
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
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
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
                tokens = try container.decode([TokenSchema].self, forKey: .tokens)
            
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
                favicon = try container.decode(SecureUrl.self, forKey: .favicon)
            
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
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(companyInfo, forKey: .companyInfo)
            
            
            
            try? container.encodeIfPresent(ownerInfo, forKey: .ownerInfo)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            try? container.encodeIfPresent(website, forKey: .website)
            
            
            
            try? container.encodeIfPresent(cors, forKey: .cors)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            try? container.encodeIfPresent(tokens, forKey: .tokens)
            
            
            
            try? container.encodeIfPresent(domains, forKey: .domains)
            
            
            
            try? container.encodeIfPresent(favicon, forKey: .favicon)
            
            
            
            try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}
