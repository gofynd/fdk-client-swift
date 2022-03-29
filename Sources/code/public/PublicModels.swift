import Foundation
public extension PublicClient {
    /*
         Model: ApplicationResponse
         Used By: Configuration
     */
    class ApplicationResponse: Codable {
        public var application: Application?

        public enum CodingKeys: String, CodingKey {
            case application
        }

        public init(application: Application?) {
            self.application = application
        }

        public func duplicate() -> ApplicationResponse {
            let dict = self.dictionary!
            let copy = ApplicationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(Application.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)
        }
    }

    /*
         Model: Currency
         Used By: Configuration
     */
    class Currency: Codable {
        public var id: String?

        public var isActive: Bool?

        public var name: String?

        public var code: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var decimalDigits: Int?

        public var symbol: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case isActive = "is_active"

            case name

            case code

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case decimalDigits = "decimal_digits"

            case symbol
        }

        public init(code: String?, createdAt: String?, decimalDigits: Int?, isActive: Bool?, name: String?, symbol: String?, updatedAt: String?, id: String?) {
            self.id = id

            self.isActive = isActive

            self.name = name

            self.code = code

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.decimalDigits = decimalDigits

            self.symbol = symbol
        }

        public func duplicate() -> Currency {
            let dict = self.dictionary!
            let copy = Currency(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                decimalDigits = try container.decode(Int.self, forKey: .decimalDigits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(decimalDigits, forKey: .decimalDigits)

            try? container.encodeIfPresent(symbol, forKey: .symbol)
        }
    }

    /*
         Model: Domain
         Used By: Configuration
     */
    class Domain: Codable {
        public var verified: Bool?

        public var isPrimary: Bool?

        public var isShortlink: Bool?

        public var id: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case verified

            case isPrimary = "is_primary"

            case isShortlink = "is_shortlink"

            case id = "_id"

            case name
        }

        public init(isPrimary: Bool?, isShortlink: Bool?, name: String?, verified: Bool?, id: String?) {
            self.verified = verified

            self.isPrimary = isPrimary

            self.isShortlink = isShortlink

            self.id = id

            self.name = name
        }

        public func duplicate() -> Domain {
            let dict = self.dictionary!
            let copy = Domain(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPrimary = try container.decode(Bool.self, forKey: .isPrimary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isShortlink = try container.decode(Bool.self, forKey: .isShortlink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)

            try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ApplicationWebsite
         Used By: Configuration
     */
    class ApplicationWebsite: Codable {
        public var enabled: Bool?

        public var basepath: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case basepath
        }

        public init(basepath: String?, enabled: Bool?) {
            self.enabled = enabled

            self.basepath = basepath
        }

        public func duplicate() -> ApplicationWebsite {
            let dict = self.dictionary!
            let copy = ApplicationWebsite(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                basepath = try container.decode(String.self, forKey: .basepath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(basepath, forKey: .basepath)
        }
    }

    /*
         Model: ApplicationCors
         Used By: Configuration
     */
    class ApplicationCors: Codable {
        public var domains: [String]?

        public enum CodingKeys: String, CodingKey {
            case domains
        }

        public init(domains: [String]?) {
            self.domains = domains
        }

        public func duplicate() -> ApplicationCors {
            let dict = self.dictionary!
            let copy = ApplicationCors(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domains = try container.decode([String].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domains, forKey: .domains)
        }
    }

    /*
         Model: ApplicationAuth
         Used By: Configuration
     */
    class ApplicationAuth: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool?) {
            self.enabled = enabled
        }

        public func duplicate() -> ApplicationAuth {
            let dict = self.dictionary!
            let copy = ApplicationAuth(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: ApplicationRedirections
         Used By: Configuration
     */
    class ApplicationRedirections: Codable {
        public var redirectFrom: String?

        public var redirectTo: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case redirectFrom = "redirect_from"

            case redirectTo = "redirect_to"

            case type
        }

        public init(redirectFrom: String?, redirectTo: String?, type: String?) {
            self.redirectFrom = redirectFrom

            self.redirectTo = redirectTo

            self.type = type
        }

        public func duplicate() -> ApplicationRedirections {
            let dict = self.dictionary!
            let copy = ApplicationRedirections(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectFrom = try container.decode(String.self, forKey: .redirectFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectTo = try container.decode(String.self, forKey: .redirectTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(redirectFrom, forKey: .redirectFrom)

            try? container.encodeIfPresent(redirectTo, forKey: .redirectTo)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ApplicationMeta
         Used By: Configuration
     */
    class ApplicationMeta: Codable {
        public var name: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case value
        }

        public init(name: String?, value: String?) {
            self.name = name

            self.value = value
        }

        public func duplicate() -> ApplicationMeta {
            let dict = self.dictionary!
            let copy = ApplicationMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: SecureUrl
         Used By: Configuration
     */
    class SecureUrl: Codable {
        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"
        }

        public init(secureUrl: String?) {
            self.secureUrl = secureUrl
        }

        public func duplicate() -> SecureUrl {
            let dict = self.dictionary!
            let copy = SecureUrl(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

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

        public var isActive: Bool?

        public var id: String?

        public var name: String?

        public var owner: String?

        public var companyId: Int?

        public var token: String?

        public var redirections: [ApplicationRedirections]?

        public var meta: [ApplicationMeta]?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public var banner: SecureUrl?

        public var logo: SecureUrl?

        public var favicon: SecureUrl?

        public var domains: [Domain]?

        public var appType: String?

        public var mobileLogo: SecureUrl?

        public var domain: Domain?

        public enum CodingKeys: String, CodingKey {
            case website

            case cors

            case auth

            case description

            case channelType = "channel_type"

            case cacheTtl = "cache_ttl"

            case isInternal = "is_internal"

            case isActive = "is_active"

            case id = "_id"

            case name

            case owner

            case companyId = "company_id"

            case token

            case redirections

            case meta

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"

            case banner

            case logo

            case favicon

            case domains

            case appType = "app_type"

            case mobileLogo = "mobile_logo"

            case domain
        }

        public init(appType: String?, auth: ApplicationAuth?, banner: SecureUrl?, cacheTtl: Int?, channelType: String?, companyId: Int?, cors: ApplicationCors?, createdAt: String?, description: String?, domain: Domain?, domains: [Domain]?, favicon: SecureUrl?, isActive: Bool?, isInternal: Bool?, logo: SecureUrl?, meta: [ApplicationMeta]?, mobileLogo: SecureUrl?, name: String?, owner: String?, redirections: [ApplicationRedirections]?, token: String?, updatedAt: String?, website: ApplicationWebsite?, id: String?, v: Int?) {
            self.website = website

            self.cors = cors

            self.auth = auth

            self.description = description

            self.channelType = channelType

            self.cacheTtl = cacheTtl

            self.isInternal = isInternal

            self.isActive = isActive

            self.id = id

            self.name = name

            self.owner = owner

            self.companyId = companyId

            self.token = token

            self.redirections = redirections

            self.meta = meta

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v

            self.banner = banner

            self.logo = logo

            self.favicon = favicon

            self.domains = domains

            self.appType = appType

            self.mobileLogo = mobileLogo

            self.domain = domain
        }

        public func duplicate() -> Application {
            let dict = self.dictionary!
            let copy = Application(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                website = try container.decode(ApplicationWebsite.self, forKey: .website)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cors = try container.decode(ApplicationCors.self, forKey: .cors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(ApplicationAuth.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cacheTtl = try container.decode(Int.self, forKey: .cacheTtl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isInternal = try container.decode(Bool.self, forKey: .isInternal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                owner = try container.decode(String.self, forKey: .owner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirections = try container.decode([ApplicationRedirections].self, forKey: .redirections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([ApplicationMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banner = try container.decode(SecureUrl.self, forKey: .banner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(SecureUrl.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                favicon = try container.decode(SecureUrl.self, forKey: .favicon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domains = try container.decode([Domain].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appType = try container.decode(String.self, forKey: .appType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileLogo = try container.decode(SecureUrl.self, forKey: .mobileLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(Domain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(redirections, forKey: .redirections)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(favicon, forKey: .favicon)

            try? container.encodeIfPresent(domains, forKey: .domains)

            try? container.encodeIfPresent(appType, forKey: .appType)

            try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)

            try? container.encodeIfPresent(domain, forKey: .domain)
        }
    }

    /*
         Model: NotFound
         Used By: Configuration
     */
    class NotFound: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> NotFound {
            let dict = self.dictionary!
            let copy = NotFound(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: BadRequest
         Used By: Configuration
     */
    class BadRequest: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> BadRequest {
            let dict = self.dictionary!
            let copy = BadRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: Page
         Used By: Configuration
     */
    class Page: Codable {
        public var type: String

        public var size: Int?

        public var current: Int?

        public var hasNext: Bool?

        public var itemTotal: Int?

        public var nextId: String?

        public var hasPrevious: Bool?

        public enum CodingKeys: String, CodingKey {
            case type

            case size

            case current

            case hasNext = "has_next"

            case itemTotal = "item_total"

            case nextId = "next_id"

            case hasPrevious = "has_previous"
        }

        public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, nextId: String?, size: Int?, type: String) {
            self.type = type

            self.size = size

            self.current = current

            self.hasNext = hasNext

            self.itemTotal = itemTotal

            self.nextId = nextId

            self.hasPrevious = hasPrevious
        }

        public func duplicate() -> Page {
            let dict = self.dictionary!
            let copy = Page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(nextId, forKey: .nextId)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        }
    }

    /*
         Model: LocationDefaultLanguage
         Used By: Configuration
     */
    class LocationDefaultLanguage: Codable {
        public var name: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case code
        }

        public init(code: String?, name: String?) {
            self.name = name

            self.code = code
        }

        public func duplicate() -> LocationDefaultLanguage {
            let dict = self.dictionary!
            let copy = LocationDefaultLanguage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: LocationDefaultCurrency
         Used By: Configuration
     */
    class LocationDefaultCurrency: Codable {
        public var name: String?

        public var symbol: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case symbol

            case code
        }

        public init(code: String?, name: String?, symbol: String?) {
            self.name = name

            self.symbol = symbol

            self.code = code
        }

        public func duplicate() -> LocationDefaultCurrency {
            let dict = self.dictionary!
            let copy = LocationDefaultCurrency(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(symbol, forKey: .symbol)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: LocationCountry
         Used By: Configuration
     */
    class LocationCountry: Codable {
        public var capital: String?

        public var currency: String?

        public var iso2: String?

        public var iso3: String?

        public var name: String?

        public var parent: String?

        public var phoneCode: String?

        public var type: String?

        public var uid: Int?

        public var v: Int?

        public var id: String?

        public var defaultCurrency: LocationDefaultCurrency?

        public var defaultLanguage: LocationDefaultLanguage?

        public enum CodingKeys: String, CodingKey {
            case capital

            case currency

            case iso2

            case iso3

            case name

            case parent

            case phoneCode = "phone_code"

            case type

            case uid

            case v = "__v"

            case id = "_id"

            case defaultCurrency = "default_currency"

            case defaultLanguage = "default_language"
        }

        public init(capital: String?, currency: String?, defaultCurrency: LocationDefaultCurrency?, defaultLanguage: LocationDefaultLanguage?, iso2: String?, iso3: String?, name: String?, parent: String?, phoneCode: String?, type: String?, uid: Int?, id: String?, v: Int?) {
            self.capital = capital

            self.currency = currency

            self.iso2 = iso2

            self.iso3 = iso3

            self.name = name

            self.parent = parent

            self.phoneCode = phoneCode

            self.type = type

            self.uid = uid

            self.v = v

            self.id = id

            self.defaultCurrency = defaultCurrency

            self.defaultLanguage = defaultLanguage
        }

        public func duplicate() -> LocationCountry {
            let dict = self.dictionary!
            let copy = LocationCountry(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                capital = try container.decode(String.self, forKey: .capital)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                iso2 = try container.decode(String.self, forKey: .iso2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                iso3 = try container.decode(String.self, forKey: .iso3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parent = try container.decode(String.self, forKey: .parent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phoneCode = try container.decode(String.self, forKey: .phoneCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultCurrency = try container.decode(LocationDefaultCurrency.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultLanguage = try container.decode(LocationDefaultLanguage.self, forKey: .defaultLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(capital, forKey: .capital)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(iso2, forKey: .iso2)

            try? container.encodeIfPresent(iso3, forKey: .iso3)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parent, forKey: .parent)

            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)

            try? container.encodeIfPresent(defaultLanguage, forKey: .defaultLanguage)
        }
    }

    /*
         Model: Locations
         Used By: Configuration
     */
    class Locations: Codable {
        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [[String: Any]]?) {
            self.items = items
        }

        public func duplicate() -> Locations {
            let dict = self.dictionary!
            let copy = Locations(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: EventConfig
         Used By: Webhook
     */
    class EventConfig: Codable {
        public var id: Int?

        public var eventName: String?

        public var eventType: String?

        public var eventCategory: String?

        public var version: String?

        public var displayName: String?

        public var description: String?

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case eventName = "event_name"

            case eventType = "event_type"

            case eventCategory = "event_category"

            case version

            case displayName = "display_name"

            case description

            case createdOn = "created_on"
        }

        public init(createdOn: String?, description: String?, displayName: String?, eventCategory: String?, eventName: String?, eventType: String?, id: Int?, version: String?) {
            self.id = id

            self.eventName = eventName

            self.eventType = eventType

            self.eventCategory = eventCategory

            self.version = version

            self.displayName = displayName

            self.description = description

            self.createdOn = createdOn
        }

        public func duplicate() -> EventConfig {
            let dict = self.dictionary!
            let copy = EventConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventName = try container.decode(String.self, forKey: .eventName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventCategory = try container.decode(String.self, forKey: .eventCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }

    /*
         Model: EventConfigList
         Used By: Webhook
     */
    class EventConfigList: Codable {
        public var items: [EventConfig]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [EventConfig]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> EventConfigList {
            let dict = self.dictionary!
            let copy = EventConfigList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([EventConfig].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: EventConfigResponse
         Used By: Webhook
     */
    class EventConfigResponse: Codable {
        public var eventConfigs: [EventConfig]?

        public enum CodingKeys: String, CodingKey {
            case eventConfigs = "event_configs"
        }

        public init(eventConfigs: [EventConfig]?) {
            self.eventConfigs = eventConfigs
        }

        public func duplicate() -> EventConfigResponse {
            let dict = self.dictionary!
            let copy = EventConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eventConfigs = try container.decode([EventConfig].self, forKey: .eventConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventConfigs, forKey: .eventConfigs)
        }
    }

    /*
         Model: SubscriberConfigList
         Used By: Webhook
     */
    class SubscriberConfigList: Codable {
        public var items: [SubscriberResponse]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [SubscriberResponse]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> SubscriberConfigList {
            let dict = self.dictionary!
            let copy = SubscriberConfigList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([SubscriberResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: EventProcessedStatus
         Used By: Webhook
     */
    class EventProcessedStatus: Codable {
        public var id: Int?

        public var subscriberId: String?

        public var attempt: Int?

        public var responseCode: String?

        public var responseMessage: String?

        public var createdOn: String?

        public var processedOn: String?

        public var status: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case subscriberId = "subscriber_id"

            case attempt

            case responseCode = "response_code"

            case responseMessage = "response_message"

            case createdOn = "created_on"

            case processedOn = "processed_on"

            case status
        }

        public init(attempt: Int?, createdOn: String?, id: Int?, processedOn: String?, responseCode: String?, responseMessage: String?, status: Bool?, subscriberId: String?) {
            self.id = id

            self.subscriberId = subscriberId

            self.attempt = attempt

            self.responseCode = responseCode

            self.responseMessage = responseMessage

            self.createdOn = createdOn

            self.processedOn = processedOn

            self.status = status
        }

        public func duplicate() -> EventProcessedStatus {
            let dict = self.dictionary!
            let copy = EventProcessedStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscriberId = try container.decode(String.self, forKey: .subscriberId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attempt = try container.decode(Int.self, forKey: .attempt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseCode = try container.decode(String.self, forKey: .responseCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseMessage = try container.decode(String.self, forKey: .responseMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processedOn = try container.decode(String.self, forKey: .processedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)

            try? container.encodeIfPresent(attempt, forKey: .attempt)

            try? container.encodeIfPresent(responseCode, forKey: .responseCode)

            try? container.encodeIfPresent(responseMessage, forKey: .responseMessage)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(processedOn, forKey: .processedOn)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: EventPayload
         Used By: Webhook
     */
    class EventPayload: Codable {
        public var id: Int?

        public var eventTraceId: String?

        public var messageId: String?

        public var eventName: String?

        public var eventType: String?

        public var version: String?

        public var status: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case eventTraceId = "event_trace_id"

            case messageId = "message_id"

            case eventName = "event_name"

            case eventType = "event_type"

            case version

            case status
        }

        public init(eventName: String?, eventTraceId: String?, eventType: String?, id: Int?, messageId: String?, status: Bool?, version: String?) {
            self.id = id

            self.eventTraceId = eventTraceId

            self.messageId = messageId

            self.eventName = eventName

            self.eventType = eventType

            self.version = version

            self.status = status
        }

        public func duplicate() -> EventPayload {
            let dict = self.dictionary!
            let copy = EventPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventTraceId = try container.decode(String.self, forKey: .eventTraceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                messageId = try container.decode(String.self, forKey: .messageId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventName = try container.decode(String.self, forKey: .eventName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(eventTraceId, forKey: .eventTraceId)

            try? container.encodeIfPresent(messageId, forKey: .messageId)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: SubscriberConfig
         Used By: Webhook
     */
    class SubscriberConfig: Codable {
        public var id: Int?

        public var name: String?

        public var webhookUrl: String?

        public var association: Association?

        public var customHeaders: [String: Any]?

        public var status: SubscriberStatus?

        public var emailId: String?

        public var authMeta: AuthMeta?

        public var eventId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case webhookUrl = "webhook_url"

            case association

            case customHeaders = "custom_headers"

            case status

            case emailId = "email_id"

            case authMeta = "auth_meta"

            case eventId = "event_id"
        }

        public init(association: Association?, authMeta: AuthMeta?, customHeaders: [String: Any]?, emailId: String?, eventId: [Int]?, id: Int?, name: String?, status: SubscriberStatus?, webhookUrl: String?) {
            self.id = id

            self.name = name

            self.webhookUrl = webhookUrl

            self.association = association

            self.customHeaders = customHeaders

            self.status = status

            self.emailId = emailId

            self.authMeta = authMeta

            self.eventId = eventId
        }

        public func duplicate() -> SubscriberConfig {
            let dict = self.dictionary!
            let copy = SubscriberConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                association = try container.decode(Association.self, forKey: .association)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(SubscriberStatus.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emailId = try container.decode(String.self, forKey: .emailId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventId = try container.decode([Int].self, forKey: .eventId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)

            try? container.encodeIfPresent(association, forKey: .association)

            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(authMeta, forKey: .authMeta)

            try? container.encodeIfPresent(eventId, forKey: .eventId)
        }
    }

    /*
         Model: SubscriberResponse
         Used By: Webhook
     */
    class SubscriberResponse: Codable {
        public var id: Int?

        public var name: String?

        public var webhookUrl: String?

        public var association: Association?

        public var customHeaders: [String: Any]?

        public var emailId: String?

        public var status: SubscriberStatus?

        public var authMeta: AuthMeta?

        public var createdOn: String?

        public var updatedOn: String?

        public var eventConfigs: [EventConfig]?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case webhookUrl = "webhook_url"

            case association

            case customHeaders = "custom_headers"

            case emailId = "email_id"

            case status

            case authMeta = "auth_meta"

            case createdOn = "created_on"

            case updatedOn = "updated_on"

            case eventConfigs = "event_configs"
        }

        public init(association: Association?, authMeta: AuthMeta?, createdOn: String?, customHeaders: [String: Any]?, emailId: String?, eventConfigs: [EventConfig]?, id: Int?, name: String?, status: SubscriberStatus?, updatedOn: String?, webhookUrl: String?) {
            self.id = id

            self.name = name

            self.webhookUrl = webhookUrl

            self.association = association

            self.customHeaders = customHeaders

            self.emailId = emailId

            self.status = status

            self.authMeta = authMeta

            self.createdOn = createdOn

            self.updatedOn = updatedOn

            self.eventConfigs = eventConfigs
        }

        public func duplicate() -> SubscriberResponse {
            let dict = self.dictionary!
            let copy = SubscriberResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                association = try container.decode(Association.self, forKey: .association)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emailId = try container.decode(String.self, forKey: .emailId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(SubscriberStatus.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedOn = try container.decode(String.self, forKey: .updatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventConfigs = try container.decode([EventConfig].self, forKey: .eventConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)

            try? container.encodeIfPresent(association, forKey: .association)

            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(authMeta, forKey: .authMeta)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)

            try? container.encodeIfPresent(eventConfigs, forKey: .eventConfigs)
        }
    }

    /*
         Model: SubscriberEvent
         Used By: Webhook
     */
    class SubscriberEvent: Codable {
        public var id: Int?

        public var subscriberId: Int?

        public var eventId: Int?

        public var createdDate: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case subscriberId = "subscriber_id"

            case eventId = "event_id"

            case createdDate = "created_date"
        }

        public init(createdDate: String?, eventId: Int?, id: Int?, subscriberId: Int?) {
            self.id = id

            self.subscriberId = subscriberId

            self.eventId = eventId

            self.createdDate = createdDate
        }

        public func duplicate() -> SubscriberEvent {
            let dict = self.dictionary!
            let copy = SubscriberEvent(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscriberId = try container.decode(Int.self, forKey: .subscriberId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventId = try container.decode(Int.self, forKey: .eventId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdDate = try container.decode(String.self, forKey: .createdDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)

            try? container.encodeIfPresent(eventId, forKey: .eventId)

            try? container.encodeIfPresent(createdDate, forKey: .createdDate)
        }
    }

    /*
         Model: AuthMeta
         Used By: Webhook
     */
    class AuthMeta: Codable {
        public var type: String?

        public var secret: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case secret
        }

        public init(secret: String?, type: String?) {
            self.type = type

            self.secret = secret
        }

        public func duplicate() -> AuthMeta {
            let dict = self.dictionary!
            let copy = AuthMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secret = try container.decode(String.self, forKey: .secret)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(secret, forKey: .secret)
        }
    }

    /*
         Model: Association
         Used By: Webhook
     */
    class Association: Codable {
        public var companyId: Int?

        public var applicationId: [String]?

        public var extensionId: String?

        public var criteria: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case applicationId = "application_id"

            case extensionId = "extension_id"

            case criteria
        }

        public init(applicationId: [String]?, companyId: Int?, criteria: String?, extensionId: String?) {
            self.companyId = companyId

            self.applicationId = applicationId

            self.extensionId = extensionId

            self.criteria = criteria
        }

        public func duplicate() -> Association {
            let dict = self.dictionary!
            let copy = Association(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode([String].self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extensionId = try container.decode(String.self, forKey: .extensionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(extensionId, forKey: .extensionId)

            try? container.encodeIfPresent(criteria, forKey: .criteria)
        }
    }

    /*
         Model: EventConfigBase
         Used By: Webhook
     */
    class EventConfigBase: Codable {
        public var eventName: String?

        public var eventType: String?

        public var eventCategory: String?

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case eventName = "event_name"

            case eventType = "event_type"

            case eventCategory = "event_category"

            case version
        }

        public init(eventCategory: String?, eventName: String?, eventType: String?, version: String?) {
            self.eventName = eventName

            self.eventType = eventType

            self.eventCategory = eventCategory

            self.version = version
        }

        public func duplicate() -> EventConfigBase {
            let dict = self.dictionary!
            let copy = EventConfigBase(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eventName = try container.decode(String.self, forKey: .eventName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventCategory = try container.decode(String.self, forKey: .eventCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
